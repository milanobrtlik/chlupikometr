import 'package:chlupikometr_lite/common/error_state_helper.dart';
import 'package:chlupikometr_lite/home_page/bloc/homepage_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';

import '../bloc/family_create_bloc.dart';

class _Dialog extends StatelessWidget {
  const _Dialog(this.state, {Key? key}) : super(key: key);

  final FamilyCreateInitial state;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const ListTile(
          title: Text('Založit rodinu'),
        ),
        TextField(
          enabled: state.isProcessing == false,
          onChanged: (value) =>
              context.read<FamilyCreateBloc>().add(OnFamilyNameChanged(value)),
          decoration: InputDecoration(
            label: const Text('Název'),
            hintText: 'Název',
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(600)),
            ),
            errorText: state.error,
          ),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
            onPressed: state.isProcessing
                ? null
                : () => context
                    .read<FamilyCreateBloc>()
                    .add(OnFamilyFormSubmitted()),
            child: state.isProcessing
                ? const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(),
                )
                : const Text('Uložit')),
      ],
    );
  }
}

class FamilyCreateView extends StatelessWidget {
  const FamilyCreateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final states = {
      FamilyCreateInitial: (state) => _Dialog(state),
      FamilyCreateError: (state) => StateError(state),
      FamilyCreated: (_) => const Dialog(),
    };
    return BlocProvider(
      create: (_) => FamilyCreateBloc(context.read<GraphQLClient>()),
      child: BlocBuilder<FamilyCreateBloc, FamilyCreateState>(
        builder: (context, state) {
          if(state is FamilyCreated) {
            context.read<HomepageBloc>().add(OnHomepageEntered());
            Navigator.of(context).pop();
          }
          return Dialog(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: states[state.runtimeType]!(state),
            ),
          );
        },
      ),
    );
  }
}
