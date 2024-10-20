part of 'camera_bloc.dart';

@immutable
abstract class CameraState {}

class CameraUninitialized extends CameraState {}

class CameraInitializing extends CameraState {}

class CameraInitialized extends CameraState {
  CameraInitialized(this.controller);

  final CameraController controller;
}
