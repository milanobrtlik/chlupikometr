import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chlupikometr_lite/ledger/detail/graphql/ledger_child_detail.graphql.dart';
import 'package:chlupikometr_lite/schema.graphql.dart';
import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../home_page/graphql/homepage.graphql.dart';

part 'ledger_child_detail_event.dart';

part 'ledger_child_detail_state.dart';

class LedgerChildDetailBloc
    extends Bloc<LedgerChildDetailEvent, LedgerChildDetailState> {
  LedgerChildDetailBloc({
    required this.client,
  }) : super(LedgerChildDetailInitial()) {
    on<OnLedgerChildDetailEntered>(_onLedgerChildDetailEntered);
  }

  final GraphQLClient client;

  Future<void> _onLedgerChildDetailEntered(
    OnLedgerChildDetailEntered event,
    Emitter<LedgerChildDetailState> emit,
  ) async {
    emit(LedgerChildDetailLoading());
    final result = await client.query$ledgerChildDetail(
      Options$Query$ledgerChildDetail(
        variables: Variables$Query$ledgerChildDetail(
          familyId: await Hive.box('family').get('id'),
          where: Input$LedgerFilterInput(
            childId: Input$ComparableInt32OperationFilterInput(
              eq: event.child.id,
            ),
            enteredAt: Input$ComparableDateTimeOperationFilterInput(
              gte: DateTime.now().subtract(const Duration(days: 6)),
            ),
          ),
          order: <Input$LedgerSortInput>[
            Input$LedgerSortInput(
              enteredAt: Enum$SortEnumType.DESC,
            ),
          ],
        ),
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );
    if (result.hasException) {
      final error = result.exception!.linkException.toString() +
          result.exception!.graphqlErrors.join(';');
      emit(LedgerChildDetailError(error));
      return;
    }
    emit(LedgerChildDetailLoaded(result.parsedData!.ledgerList, event.child));
  }
}
