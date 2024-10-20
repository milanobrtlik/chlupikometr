import 'package:chlupikometr_lite/family/child/manage/components/manage_child_buttons.dart';
import 'package:chlupikometr_lite/family/child/manage/components/manage_child_text_field.dart';
import 'package:chlupikometr_lite/family/manage_members/bloc/manage_family_members_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';

import '../bloc/manage_child_bloc.dart';

class _StateEditing extends StatelessWidget {
  const _StateEditing(this.state, {Key? key}) : super(key: key);

  final ManageChildEditing state;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Nový člen rodiny', style: Theme.of(context).textTheme.headline5),
        const SizedBox(height: 8),
        if (state.picture == null)
          Icon(
            Icons.account_circle_outlined,
            size: 96,
            color: Theme.of(context).colorScheme.outline,
          ),
        if (state.picture != null)
          CircleAvatar(
            radius: 48,
            backgroundImage: MemoryImage(state.picture!),
          ),
        const SizedBox(height: 8),
        BtnTakePicture(
          state: state,
          manageChildBloc: context.read<ManageChildBloc>(),
        ),
        BtnPickFromPhotoLibrary(
          state: state,
          manageChildBloc: context.read<ManageChildBloc>(),
        ),
        if (state.pictureError != null)
          Text(
            state.pictureError!,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
          ),
        const SizedBox(height: 16),
        ManageChildTextField(
          state: state,
          manageChildBloc: context.read<ManageChildBloc>(),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: state.isSubmitted
              ? null
              : () =>
                  context.read<ManageChildBloc>().add(OnCreateChildSubmitted()),
          child: state.isSubmitted
              ? const CircularProgressIndicator()
              : const Text('Uložit'),
        ),
      ],
    );
  }
}

class ManageChildView extends StatelessWidget {
  const ManageChildView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final states = {
      ManageChildEditing: (state) => _StateEditing(state),
    };
    return BlocProvider(
      create: (context) => ManageChildBloc(
        context.read<GraphQLClient>(),
        context.read<ManageFamilyMembersBloc>(),
      ),
      child: BlocBuilder<ManageChildBloc, ManageChildState>(
        builder: (context, state) {
          if (state is ManageChildEditing && state.isFinished) {
            Future(() => Navigator.of(context).pop());
          }
          return Dialog(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: states[state.runtimeType]!(state),
            ),
          );
        },
      ),
    );
  }
}
