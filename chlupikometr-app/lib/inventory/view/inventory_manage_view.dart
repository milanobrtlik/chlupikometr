import 'package:chlupikometr_lite/inventory/bloc/inventory_manage_bloc.dart';
import 'package:chlupikometr_lite/inventory/view/inventory_level_manage_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../home_page/graphql/homepage.graphql.dart';
import '../formz/inventory/inventory.dart';

class InventoryManageView extends StatelessWidget {
  const InventoryManageView(this.inventory, {Key? key}) : super(key: key);

  final Query$homepage$inventoryList? inventory;

  @override
  Widget build(BuildContext context) {
    return BlocListener<InventoryManageBloc, InventoryManageState>(
      listener: (context, state) {
        if (state.status == FormzStatus.submissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(const SnackBar(content: Text('Chyba')));
        }
        if (state.status == FormzStatus.submissionSuccess) {
          Navigator.of(context).pop(true);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Vytvořit'),
          centerTitle: true,
          surfaceTintColor: Theme.of(context).colorScheme.surface,
          actions: [
            BlocBuilder<InventoryManageBloc, InventoryManageState>(
              builder: (context, state) {
                final inProgress =
                    state.status == FormzStatus.submissionInProgress;
                return IconButton(
                  onPressed: inProgress
                      ? null
                      : () => context
                          .read<InventoryManageBloc>()
                          .add(OnInventoryCreated()),
                  icon: inProgress
                      ? const CircularProgressIndicator()
                      : const Icon(Icons.save),
                );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _Title(),
                const SizedBox(height: 16),
                const _Description(),
                const SizedBox(height: 16),
                const Text('Urovne'),
                const _Levels(),
                ListTile(
                  title: const Icon(Icons.add, size: 32),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) =>
                          const InventoryLevelManageView(null),
                    ).then((value) {
                      if (value == null) return null;
                      context
                          .read<InventoryManageBloc>()
                          .add(OnInventoryLevelCreated(value));
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Levels extends StatelessWidget {
  const _Levels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InventoryManageBloc, InventoryManageState>(
      builder: (context, state) => ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, i) => _Level(state.levels[i]),
        separatorBuilder: (_, __) => const Divider(height: 0),
        itemCount: state.levels.length,
      ),
    );
  }
}

class _Level extends StatelessWidget {
  const _Level(this.level, {Key? key}) : super(key: key);

  final Level level;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Row(
        children: [
          Text(level.title),
          const SizedBox(width: 16),
          Text(level.reward.toString()),
          const Icon(Icons.bolt),
          const Spacer(),
          IconButton(
            onPressed: () {
              final bloc = context.read<InventoryManageBloc>();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Level removed'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () => bloc.add(OnInventoryLevelCreated(level)),
                  ),
                ),
              );
              bloc.add(OnInventoryLevelRemoved(level));
            },
            icon: const Icon(Icons.delete_forever_outlined),
          ),
          IconButton(
            onPressed: () => showDialog(
              context: context,
              builder: (context) => InventoryLevelManageView(level),
            ).then((value) {
              if (value == null) return null;
              context
                  .read<InventoryManageBloc>()
                  .add(OnInventoryLevelChanged(value));
            }),
            icon: const Icon(Icons.edit_outlined),
          ),
        ],
      ),
      subtitle: level.description == null ? null : Text(level.description!),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InventoryManageBloc, InventoryManageState>(
      buildWhen: (previous, current) => previous.title != current.title,
      builder: (context, state) => TextFormField(
        initialValue: state.title.value,
        onChanged: (value) => context
            .read<InventoryManageBloc>()
            .add(OnInventoryTitleChanged(value)),
        decoration: InputDecoration(
          label: const Text('Název'),
          hintText: 'Název',
          border: const OutlineInputBorder(),
          errorText: state.title.error?.text(),
        ),
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InventoryManageBloc, InventoryManageState>(
      buildWhen: (prev, curr) => prev.title != curr.title,
      builder: (context, state) => TextFormField(
        maxLines: 10,
        minLines: 4,
        initialValue: state.description.value,
        onChanged: (value) => context
            .read<InventoryManageBloc>()
            .add(OnInventoryDescriptionChanged(value)),
        decoration: InputDecoration(
          label: const Text('Výstižný popis'),
          hintText: 'Výstižný popis',
          border: const OutlineInputBorder(),
          errorText: state.description.error?.text(),
        ),
      ),
    );
  }
}
