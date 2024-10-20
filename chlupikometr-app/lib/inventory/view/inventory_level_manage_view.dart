import 'package:chlupikometr_lite/inventory/bloc/bloc.dart';
import 'package:chlupikometr_lite/inventory/formz/inventory/level.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../formz/level/level.dart';

class InventoryLevelManageView extends StatelessWidget {
  const InventoryLevelManageView(this.level, {Key? key}) : super(key: key);

  final Level? level;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InventoryLevelManageBloc(
        InventoryLevelManageState(
          id: level == null ? UniqueKey().hashCode : level!.id,
          title: level == null
              ? const LevelTitle.pure()
              : LevelTitle.pure(level!.title),
          description: level == null || level!.description == null
              ? const LevelDescription.pure()
              : LevelDescription.pure(level!.description!),
          reward: level == null
              ? const LevelReward.pure()
              : LevelReward.pure(level!.reward.toString()),
        ),
      ),
      child: BlocListener<InventoryLevelManageBloc, InventoryLevelManageState>(
        listener: (context, state) {
          if (state.status.isSubmissionSuccess) {
            Navigator.of(context).pop(
              Level(
                id: state.id,
                title: state.title.value,
                description: state.description.value,
                reward: int.parse(state.reward.value, radix: 10),
              ),
            );
          }
        },
        child: Dialog(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Heading',
                  style: Theme.of(context).textTheme.headline5,
                ),
                const _Title(),
                const SizedBox(height: 12),
                const _Description(),
                const SizedBox(height: 12),
                const _Reward(),
                const SizedBox(height: 12),
                const _Submit(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Reward extends StatelessWidget {
  const _Reward({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InventoryLevelManageBloc, InventoryLevelManageState>(
      buildWhen: (previous, current) => previous.reward != current.reward,
      builder: (context, state) => TextFormField(
        initialValue: state.reward.value.toString(),
        onChanged: (value) => context
            .read<InventoryLevelManageBloc>()
            .add(OnInventoryLevelRewardChanged(value)),
        keyboardType: const TextInputType.numberWithOptions(
          signed: false,
          decimal: false,
        ),
        decoration: InputDecoration(
          label: const Text('Odmena'),
          border: const OutlineInputBorder(),
          errorText: state.reward.error?.text(),
        ),
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InventoryLevelManageBloc, InventoryLevelManageState>(
      buildWhen: (previous, current) =>
          previous.description != current.description,
      builder: (context, state) => TextFormField(
        initialValue: state.description.value,
        onChanged: (value) => context
            .read<InventoryLevelManageBloc>()
            .add(OnInventoryLevelDescriptionChanged(value)),
        minLines: 3,
        maxLines: 7,
        decoration: InputDecoration(
          label: const Text('Popis'),
          border: const OutlineInputBorder(),
          errorText: state.description.error?.text(),
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InventoryLevelManageBloc, InventoryLevelManageState>(
      buildWhen: (previous, current) => previous.title != current.title,
      builder: (context, state) => TextFormField(
        initialValue: state.title.value,
        onChanged: (value) => context
            .read<InventoryLevelManageBloc>()
            .add(OnInventoryLevelTitleChanged(value)),
        decoration: InputDecoration(
          label: const Text('Název'),
          border: const OutlineInputBorder(),
          errorText: state.title.error?.text(),
        ),
      ),
    );
  }
}

class _Submit extends StatelessWidget {
  const _Submit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context
          .read<InventoryLevelManageBloc>()
          .add(OnInventoryLevelSubmitted()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.check),
          SizedBox(width: 8),
          Text('Ok'),
        ],
      ),
    );
  }
}
