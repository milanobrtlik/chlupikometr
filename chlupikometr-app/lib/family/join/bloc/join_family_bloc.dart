import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:chlupikometr_lite/common/error_state_helper.dart';
import 'package:chlupikometr_lite/family/join/graphql/join_family.graphql.dart';
import 'package:chlupikometr_lite/home_page/bloc/homepage_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';
import 'package:graphql/client.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:meta/meta.dart';

part 'join_family_event.dart';

part 'join_family_state.dart';

class JoinFamilyBloc extends Bloc<JoinFamilyEvent, JoinFamilyState> {
  JoinFamilyBloc(this.client, this.homepageBloc) : super(JoinFamilyScanning()) {
    on<OnCameraImageReceived>(_onCameraImageReceived);
  }

  final GraphQLClient client;
  final HomepageBloc homepageBloc;
  final scanner = BarcodeScanner();
  bool isProcessing = false;

  Future<void> _onCameraImageReceived(
    OnCameraImageReceived event,
    Emitter<JoinFamilyState> emit,
  ) async {
    if (isProcessing) return;
    isProcessing = true;
    final buffer = WriteBuffer();
    for (var plane in event.cameraImage.planes) {
      buffer.putUint8List(plane.bytes);
    }
    final bytes = buffer.done().buffer.asUint8List();
    final size = Size(event.cameraImage.width.toDouble(),
        event.cameraImage.height.toDouble());
    final format =
        InputImageFormatValue.fromRawValue(event.cameraImage.format.raw) ??
            InputImageFormat.nv21;
    final planeData = event.cameraImage.planes
        .map(
          (plane) => InputImagePlaneMetadata(
            bytesPerRow: plane.bytesPerRow,
            height: plane.height,
            width: plane.width,
          ),
        )
        .toList();
    final inputImageData = InputImageData(
      size: size,
      imageRotation: InputImageRotation.rotation0deg,
      inputImageFormat: format,
      planeData: planeData,
    );
    final inputImage = InputImage.fromBytes(
      bytes: bytes,
      inputImageData: inputImageData,
    );
    final scanned = await scanner.processImage(inputImage);
    for (var scan in scanned) {
      if (scan.rawValue == null) continue;
      try {
        JwtDecoder.decode(scan.rawValue!);
      } catch (e) {
        if (e is FormatException) {
          isProcessing = false;
          return;
        } else {
          rethrow;
        }
      }
      emit(JoinFamilyLoading());
      final response = await client.mutate$joinFamily(
        Options$Mutation$joinFamily(
          variables: Variables$Mutation$joinFamily(
            token: scan.rawValue!,
          ),
        ),
      );
      if(response.hasException) {
        emit(JoinFamilyError(response.exception!));
      } else {
        if(response.parsedData!.joinFamily.errors.first.code == 'UNAUTHENTICATED') {
          emit(JoinFamilyFailed());
          return;
        }
        emit(JoinFamilyJoined());
        return;
      }
      return;
    }
    isProcessing = false;
  }
}
