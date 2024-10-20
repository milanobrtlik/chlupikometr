import 'package:chlupikometr_lite/family/create/view/family_create_view.dart';
import 'package:chlupikometr_lite/family/join/view/family_join_page.dart';
import 'package:chlupikometr_lite/home_page/bloc/homepage_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../home_page/graphql/homepage.graphql.dart';

class PickAFamilyView extends StatelessWidget {
  const PickAFamilyView(this.state, {Key? key}) : super(key: key);

  final HomepageFamilyPicking state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (state.families.isEmpty == false) _PickAFamily(state.families),
          ElevatedButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => BlocProvider.value(
                  value: context.read<HomepageBloc>(),
                  child: const FamilyJoinPage(),
                ),
              ),
            ),
            child: const Text('Připojit se k rodině pomocí pozvánky'),
          ),
          ElevatedButton(
            onPressed: () => showDialog(
              context: context,
              builder: (_) => BlocProvider.value(
                value: context.read<HomepageBloc>(),
                child: const FamilyCreateView(),
              ),
            ),
            child: const Text('Založit novou rodinu'),
          ),
        ],
      ),
    );
  }
}

class _PickAFamily extends StatelessWidget {
  const _PickAFamily(this.families, {Key? key}) : super(key: key);

  final List<Query$families$families> families;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Jste členem v těchto rodinách:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Můžete se přepnout do jedné z nich.',
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        const SizedBox(height: 8),
        const Divider(height: 0),
        ListView.builder(
          shrinkWrap: true,
          itemBuilder: (ctx, index) => ListTile(
            onTap: () {
              Hive.box('family').put('id', families[index].id);
              context.read<HomepageBloc>().add(OnHomepageEntered());
            },
            title: Center(child: Text(families[index].name)),
          ),
          itemCount: families.length,
        ),
        const Divider(height: 0),
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text('nebo'),
        ),
      ],
    );
  }
}
