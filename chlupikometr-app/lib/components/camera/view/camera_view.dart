import 'package:camera/camera.dart';
import 'package:chlupikometr_lite/components/camera/bloc/camera_bloc.dart';
import 'package:chlupikometr_lite/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CameraView extends StatefulWidget {
  const CameraView(this.onImageReceived, {Key? key}) : super(key: key);

  final ValueChanged<CameraImage> onImageReceived;

  @override
  State<CameraView> createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  final CameraController cameraController = CameraController(
    cameras[0],
    ResolutionPreset.low,
    enableAudio: false,
  );

  @override
  void dispose() {
    cameraController.stopImageStream();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final states = {
      CameraUninitialized: (_) => const _StateUninitialised(),
      CameraInitializing: (_) => const _StateInitialising(),
      CameraInitialized: (state) => _StateInitialised(state),
    };
    return BlocProvider(
      create: (context) => CameraBloc()
        ..add(
          OnCameraStart(
            controller: cameraController,
            onImageReceived: widget.onImageReceived,
          ),
        ),
      child: BlocBuilder<CameraBloc, CameraState>(
        builder: (ctx, state) => Scaffold(
          body: states[state.runtimeType]!(state),
        ),
      ),
    );
  }
}

class _StateInitialised extends StatelessWidget {
  const _StateInitialised(this.state, {Key? key}) : super(key: key);

  final CameraInitialized state;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
      children: [
        CameraPreview(state.controller),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Zpět'),
        ),
      ],
    );
  }
}

class _StateInitialising extends StatelessWidget {
  const _StateInitialising({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _StateUninitialised extends StatelessWidget {
  const _StateUninitialised({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Uninitialised'));
  }
}
