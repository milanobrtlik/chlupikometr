part of 'join_family_bloc.dart';

@immutable
abstract class JoinFamilyEvent {}

class OnCameraImageReceived extends JoinFamilyEvent {
  OnCameraImageReceived(this.cameraImage);

  final CameraImage cameraImage;
}
