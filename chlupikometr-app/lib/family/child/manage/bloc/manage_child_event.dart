part of 'manage_child_bloc.dart';

@immutable
abstract class ManageChildEvent {}

class OnManageChildPicturePicked extends ManageChildEvent {
  OnManageChildPicturePicked(this.xFile);

  final Future<XFile?> xFile;
}

class OnManageChildNameChanged extends ManageChildEvent {
  OnManageChildNameChanged(this.name);

  final String name;
}

class OnCreateChildSubmitted extends ManageChildEvent {}

class OnUpdateChildSubmitted extends ManageChildEvent {
  OnUpdateChildSubmitted(this.childId);

  final int childId;
}
