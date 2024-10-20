import 'package:cached_network_image/cached_network_image.dart';
import 'package:chlupikometr_lite/family/child/manage/bloc/manage_child_bloc.dart';
import 'package:chlupikometr_lite/family/child/manage/components/manage_child_buttons.dart';
import 'package:chlupikometr_lite/family/manage_members/bloc/manage_family_members_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';

import '../../../manage_members/graphql/manage_family_members.graphql.dart';
import '../components/manage_child_text_field.dart';

class UpdateChildView extends StatelessWidget {
  const UpdateChildView(this.child, {Key? key}) : super(key: key);

  final Query$manageFamilyMembers$children child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ManageChildBloc(
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
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Editace člena rodiny',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(height: 8),
                  if ((state as ManageChildEditing).picture == null)
                    CircleAvatar(
                      radius: 48,
                      backgroundImage:
                          CachedNetworkImageProvider(child.pictureUrl!),
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
                    defaultValue: child.name,
                    state: state,
                    manageChildBloc: context.read<ManageChildBloc>(),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: state.isSubmitted
                        ? null
                        : () => context
                            .read<ManageChildBloc>()
                            .add(OnUpdateChildSubmitted(child.id)),
                    child: state.isSubmitted
                        ? const SizedBox(
                            height: 24,
                            width: 24,
                            child: CircularProgressIndicator(),
                          )
                        : const Text('Uložit'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
