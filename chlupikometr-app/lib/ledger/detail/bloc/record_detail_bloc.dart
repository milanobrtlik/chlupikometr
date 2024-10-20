import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chlupikometr_lite/common/error_state_helper.dart';
import 'package:chlupikometr_lite/ledger/detail/graphql/ledger_child_detail.graphql.dart';
import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'record_detail_event.dart';

part 'record_detail_state.dart';

class RecordDetailBloc extends Bloc<RecordDetailEvent, RecordDetailState> {
  RecordDetailBloc(this.client) : super(RecordDetailLoading()) {
    on<OnRecordDetailOpened>(_onRecordDetailOpened);
  }

  final GraphQLClient client;

  Future<void> _onRecordDetailOpened(
    OnRecordDetailOpened event,
    Emitter<RecordDetailState> emit,
  ) async {
    final result = await client.query$ledgerRecordDetail(
      Options$Query$ledgerRecordDetail(
        variables: Variables$Query$ledgerRecordDetail(
          familyId: await Hive.box('family').get('id'),
          id: event.id,
        ),
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );
    if (result.hasException) {
      emit(RecordDetailError(result.exception!));
    } else {
      emit(RecordDetailLoaded(result.parsedData!.ledgerDetail.ledger!));
    }
  }
}
