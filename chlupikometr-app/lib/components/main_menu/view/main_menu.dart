import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:chlupikometr_lite/family/manage_members/view/manage_family_members_page.dart';
import 'package:chlupikometr_lite/home_page/bloc/homepage_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home_page/graphql/homepage.graphql.dart';

class MainMenuView extends StatelessWidget {
  const MainMenuView({required this.me, Key? key}) : super(key: key);

  final Query$homepage$me me;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(me.pictureUrl),
                ),
                title: Row(
                  children: [
                    AutoSizeText(me.name, maxLines: 1),
                    const VerticalDivider(width: 4),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.edit_outlined,
                        size: 18,
                      ),
                    )
                  ],
                ),
                subtitle: const AutoSizeText(
                  'milanobrtlik@gmail.com',
                  maxLines: 1,
                ),
                trailing: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close),
                ),
              ),
              const Divider(height: 0),
              ListTile(
                onTap: () {},
                horizontalTitleGap: 0,
                leading: const Icon(Icons.payment),
                title: const Text('Zkušební doba'),
                subtitle: const Text('Končí za dva týdny'),
              ),
              const Divider(height: 0),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => BlocProvider.value(
                        value: context.read<HomepageBloc>(),
                        child: const ManageFamilyMembersPage(),
                      ),
                    ),
                  ).then((value) {
                    context.read<HomepageBloc>().add(OnHomepageEntered());
                    Navigator.of(context).pop();
                  });
                },
                horizontalTitleGap: 0,
                leading: const Icon(Icons.manage_accounts),
                title: const Text('Správa členů'),
              ),
              ListTile(
                onTap: () {},
                horizontalTitleGap: 0,
                leading: const Icon(Icons.receipt_long),
                title: const Text('Správa akcí'),
              ),
              const Divider(height: 0),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Zásady ochrany soukromí',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    const Text(
                      '|',
                      style: TextStyle(fontSize: 12),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Smluvní podmínky',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Center(
                  child: InkWell(
                    onTap: () {},
                    child: const Text(
                      'O aplikaci Chlupíkometr',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
