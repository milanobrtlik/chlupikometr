import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:chlupikometr_lite/common/error_state_helper.dart';
import 'package:chlupikometr_lite/components/modal/modal_loading.dart';
import 'package:chlupikometr_lite/components/numeric_step_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/ledger_insert_bloc.dart';
import '../graphql/ledger_insert.graphql.dart';

class LedgerInsertView extends StatelessWidget {
  const LedgerInsertView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final states = {
      LedgerInsertFormFilling: (state) => _Dialog(state),
      LedgerInsertLoading: (_) => const ModalLoading(),
      LedgerInsertLoadingError: (state) => StateError(state),
    };
    return BlocBuilder<LedgerInsertBloc, LedgerInsertState>(
      builder: (_, state) => Dialog(
        child: states[state.runtimeType]!(state),
      ),
    );
  }
}

class _Dialog extends StatelessWidget {
  const _Dialog(this.state, {Key? key}) : super(key: key);

  final LedgerInsertFormFilling state;

  @override
  Widget build(BuildContext context) {
    final inventory = state.data.inventoryDetail.inventory!;
    final children = state.data.children;
    if (state.isFinished) {
      Navigator.of(context).pop();
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: const SizedBox(),
          title: Text(inventory.title),
          trailing: IconButton(
            onPressed: () => showDialog(
              context: context,
              builder: (_) => _DetailedInfo(detail: inventory),
            ),
            icon: const Icon(Icons.help_outline),
          ),
        ),
        for (var i = 0; i < inventory.levels.length; i++) ...[
          _LevelTile(level: inventory.levels[i], state: state),
        ],
        // const SizedBox(height: 4),
        const Divider(),
        for (var i = 0; i < children.length; i++) ...[
          _ChildTile(
            state: state,
            child: children[i],
            isSubmitInProgress: state.isSubmitInProgress,
          ),
        ],
        const Divider(),
        _SubmitButton(isSubmitInProgress: state.isSubmitInProgress),
      ],
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({
    required this.isSubmitInProgress,
    Key? key,
  }) : super(key: key);

  final bool isSubmitInProgress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
          backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
        onPressed: () => isSubmitInProgress
            ? null
            : context.read<LedgerInsertBloc>().add(LedgerInsertSubmitted()),
        child: isSubmitInProgress
            ? const Padding(
                padding: EdgeInsets.all(12),
                child: CircularProgressIndicator(),
              )
            : const Text('Uložit'),
      ),
    );
  }
}

class _LevelTile extends StatelessWidget {
  const _LevelTile({
    required this.state,
    required this.level,
    Key? key,
  }) : super(key: key);

  final Query$ledgerInsertDetail$inventoryDetail$inventory$levels level;
  final LedgerInsertFormFilling state;

  void _onTap(BuildContext context) {
    state.rewards.updateAll((_, value) => value + level.reward);
    context
        .read<LedgerInsertBloc>()
        .add(LedgerInsertRewardsChanged(state.rewards));
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        child: Text(_extractReward(level.reward)),
      ),
      title: Text(level.title),
      // dense: true,
      onTap: state.isSubmitInProgress ? null : () => _onTap(context),
    );
  }
}

class _ChildTile extends StatelessWidget {
  const _ChildTile({
    required this.state,
    required this.child,
    required this.isSubmitInProgress,
    Key? key,
  }) : super(key: key);

  final LedgerInsertFormFilling state;
  final Query$ledgerInsertDetail$children child;
  final bool isSubmitInProgress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(child.pictureUrl!),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: AutoSizeText(
              child.name,
              maxLines: 1,
              // style: const TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(
            width: 149,
            height: 48,
            child: NumericStepButton(
              value: state.rewards[child.id]!,
              suffix: 'b',
              onChanged: (val) {
                state.rewards.update(child.id, (value) => val);
                context
                    .read<LedgerInsertBloc>()
                    .add(LedgerInsertRewardsChanged(state.rewards));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailedInfo extends StatelessWidget {
  const _DetailedInfo({required this.detail, Key? key}) : super(key: key);

  final Query$ledgerInsertDetail$inventoryDetail$inventory detail;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(detail.title),
      children: [
        if (detail.description != null)
          SimpleDialogOption(
            child: Text(detail.description!),
          ),
        for (var i = 0; i < detail.levels.length; i++) ...[
          ListTile(
            title: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
                  child: Text(_extractReward(detail.levels[i].reward)),
                ),
                const VerticalDivider(),
                Expanded(child: Text(detail.levels[i].title)),
              ],
            ),
            subtitle: Text(detail.levels[i].description ?? ''),
          ),
        ],
        SimpleDialogOption(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor:
                  Theme.of(context).colorScheme.onSecondaryContainer,
              backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
            ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Rozumím'),
          ),
        ),
      ],
    );
  }
}

String _extractReward(int reward) {
  if (reward > 0) {
    return '+${reward}b';
  }
  return '${reward}b';
}
