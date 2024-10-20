part of 'record_detail_bloc.dart';

@immutable
abstract class RecordDetailEvent {}

class OnRecordDetailOpened extends RecordDetailEvent {
  OnRecordDetailOpened(this.id);

  final int id;
}
