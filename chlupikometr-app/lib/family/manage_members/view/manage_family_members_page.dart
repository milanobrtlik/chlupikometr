import 'package:chlupikometr_lite/family/manage_members/bloc/manage_family_members_bloc.dart';
import 'package:chlupikometr_lite/family/manage_members/view/manage_family_members_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';

class ManageFamilyMembersPage extends StatelessWidget {
  const ManageFamilyMembersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ManageFamilyMembersBloc(context.read<GraphQLClient>())
        ..add(OnManageFamilyMembersEntered()),
      child: const ManageFamilyMembersView(),
    );
  }
}
