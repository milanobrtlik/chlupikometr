import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'camera_event.dart';

part 'camera_state.dart';

class CameraBloc extends Bloc<CameraEvent, CameraState> {
  CameraBloc() : super(CameraUninitialized()) {
    on<OnCameraStart>(_onCameraStart);
  }

  Future<void> _onCameraStart(
    OnCameraStart event,
    Emitter<CameraState> emit,
  ) async {
    emit(CameraInitializing());
    await event.controller.initialize();
    if (event.controller.value.isStreamingImages == false) {
      event.controller.startImageStream(
        (image) => event.onImageReceived(image),
      );
    }
    emit(CameraInitialized(event.controller));
  }
}
