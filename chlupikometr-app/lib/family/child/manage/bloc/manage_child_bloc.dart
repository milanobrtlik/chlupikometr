import 'dart:async';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:chlupikometr_lite/family/child/manage/graphql/manage_child.graphql.dart';
import 'package:chlupikometr_lite/family/manage_members/bloc/manage_family_members_bloc.dart';
import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import "package:http/http.dart" show MultipartFile;
import 'package:meta/meta.dart';

import '../../../../common/graphql/upload.dart';
import '../../../../schema.graphql.dart';

part 'manage_child_event.dart';

part 'manage_child_state.dart';

class ManageChildBloc extends Bloc<ManageChildEvent, ManageChildState> {
  ManageChildBloc(
    this.client,
    this.manageFamilyMembersBloc,
  ) : super(ManageChildEditing()) {
    on<OnManageChildPicturePicked>(_onPicturePicked);
    on<OnManageChildNameChanged>(_onNameChanged);
    on<OnCreateChildSubmitted>(_onSubmitted);
    on<OnUpdateChildSubmitted>(_onUpdateChild);
  }

  final GraphQLClient client;
  final ManageFamilyMembersBloc manageFamilyMembersBloc;

  Future<void> _onPicturePicked(
    OnManageChildPicturePicked event,
    Emitter<ManageChildState> emit,
  ) async {
    if (state is ManageChildEditing) {
      final file = await event.xFile;
      if (file == null) return;
      emit(
        (state as ManageChildEditing).copyWith(
          picture: await file.readAsBytes(),
          nameError: (state as ManageChildEditing).nameError,
        ),
      );
    }
  }

  Future<void> _onNameChanged(
    OnManageChildNameChanged event,
    Emitter<ManageChildState> emit,
  ) async {
    if (state is ManageChildEditing) {
      emit(
        (state as ManageChildEditing).copyWith(
          name: event.name,
          pictureError: (state as ManageChildEditing).pictureError,
        ),
      );
    }
  }

  Future<void> _onSubmitted(
    OnCreateChildSubmitted event,
    Emitter<ManageChildState> emit,
  ) async {
    if ((state is ManageChildEditing) == false) {
      return;
    }
    String? pictureError;
    if ((state as ManageChildEditing).picture == null) {
      pictureError = 'Obrázek je povinný';
    }
    String? nameError;
    final name = (state as ManageChildEditing).name;
    if (name == null || name.isEmpty) {
      nameError = 'Jméno je povinné';
    }
    if (nameError != null || pictureError != null) {
      emit(
        (state as ManageChildEditing).copyWith(
          nameError: nameError,
          pictureError: pictureError,
        ),
      );
      return;
    }
    emit((state as ManageChildEditing).copyWith(isSubmitted: true));
    final result = await client.mutate$createChild(
      Options$Mutation$createChild(
        variables: Variables$Mutation$createChild(
          familyId: Hive.box('family').get('id'),
          input: Input$ChildCreateInput(
            name: (state as ManageChildEditing).name!,
            picture: Upload(
              MultipartFile.fromBytes(
                '',
                (state as ManageChildEditing).picture!,
                filename: "hello",
              ),
            ),
          ),
        ),
      ),
    );
    if (result.hasException) {
      return;
    }
    emit((state as ManageChildEditing).copyWith(isFinished: true));
    manageFamilyMembersBloc.add(OnManageFamilyMembersEntered());
  }

  Future<void> _onUpdateChild(
    OnUpdateChildSubmitted event,
    Emitter<ManageChildState> emit,
  ) async {
    final s = (state as ManageChildEditing);
    emit(s.copyWith(isSubmitted: true));
    final result = await client.mutate$updateChild(
      Options$Mutation$updateChild(
        variables: Variables$Mutation$updateChild(
          familyId: Hive.box('family').get('id'),
          input: Input$ChildUpdateInput(
            childId: event.childId,
            name: s.name,
            picture: s.picture == null ? null : Upload(
              MultipartFile.fromBytes(
                '',
                s.picture!,
                filename: 'filename',
              ),
            ),
          ),
        ),
      ),
    );
    if (result.hasException) {
      return;
    }
    emit((state as ManageChildEditing).copyWith(isFinished: true));
    manageFamilyMembersBloc.add(OnManageFamilyMembersEntered());
  }
}
