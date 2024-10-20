import 'package:chlupikometr_lite/family/manage_members/bloc/family_member_invite_bloc.dart';
import 'package:chlupikometr_lite/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';

import 'family_member_invite_view.dart';

class FamilyMemberInvitePage extends StatelessWidget {
  const FamilyMemberInvitePage(this.kind, {Key? key}) : super(key: key);

  final Enum$FamilyUserKind kind;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => FamilyMemberInviteBloc(
        context.read<GraphQLClient>(),
      )..add(OnFamilyMemberInvite(kind)),
      child: const FamilyMemberInviteView(),
    );
  }
}
