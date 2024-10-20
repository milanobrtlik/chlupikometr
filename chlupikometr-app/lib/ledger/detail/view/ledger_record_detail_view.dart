import 'package:cached_network_image/cached_network_image.dart';
import 'package:chlupikometr_lite/common/error_state_helper.dart';
import 'package:chlupikometr_lite/ledger/detail/bloc/record_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:intl/intl.dart';

class LedgerRecordDetailView extends StatelessWidget {
  const LedgerRecordDetailView(this.id, {Key? key}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    final states = {
      RecordDetailLoading: (_) => const _StateLoading(),
      RecordDetailLoaded: (state) => _StateLoaded(state),
      RecordDetailError: (state) => StateError(state),
    };
    return BlocProvider(
      create: (_) => RecordDetailBloc(
        context.read<GraphQLClient>(),
      )..add(OnRecordDetailOpened(id)),
      child: BlocBuilder<RecordDetailBloc, RecordDetailState>(
        builder: (ctx, state) => Dialog(
          child: states[state.runtimeType]!(state),
        ),
      ),
    );
  }
}

class _StateLoaded extends StatelessWidget {
  const _StateLoaded(this.state, {Key? key}) : super(key: key);

  final RecordDetailLoaded state;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(
              state.detail.parent.pictureUrl!,
            ),
          ),
          title: Text(state.detail.title),
          subtitle: Text(
            DateFormat('dd. MM. yyyy HH:mm').format(state.detail.enteredAt),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Flexible(
                child: Text(state.detail.description ?? ''),
              ),
            ],
          ),
        ),
        if (state.detail.parentNote != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              children: [
                Row(
                  children: const [
                    Flexible(
                      child: Text(
                        'Poznámka:',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Flexible(child: Text(state.detail.parentNote!)),
                  ],
                ),
              ],
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Zavřít'),
          ),
        ),
      ],
    );
  }
}

class _StateLoading extends StatelessWidget {
  const _StateLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SimpleDialogOption(),
        SimpleDialogOption(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(),
            ],
          ),
        ),
        const SimpleDialogOption(),
      ],
    );
  }
}
