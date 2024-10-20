part of 'camera_bloc.dart';

@immutable
abstract class CameraEvent {}

class OnCameraStart extends CameraEvent {
  OnCameraStart({required this.controller, required this.onImageReceived});

  final CameraController controller;
  final ValueChanged<CameraImage> onImageReceived;
}
