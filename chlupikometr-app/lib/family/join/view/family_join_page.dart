import 'package:chlupikometr_lite/family/join/bloc/join_family_bloc.dart';
import 'package:chlupikometr_lite/family/join/view/family_join_view.dart';
import 'package:chlupikometr_lite/home_page/bloc/homepage_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';

class FamilyJoinPage extends StatelessWidget {
  const FamilyJoinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => JoinFamilyBloc(
        context.read<GraphQLClient>(),
        context.read<HomepageBloc>(),
      ),
      child: const FamilyJoinView(),
    );
  }
}
