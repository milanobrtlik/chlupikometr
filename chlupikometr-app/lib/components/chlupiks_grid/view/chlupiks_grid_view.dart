import 'package:chlupikometr_lite/components/chlupiks_grid/view/chlupik_detail.dart';
import 'package:flutter/material.dart';

import '../../../home_page/graphql/homepage.graphql.dart';

class ChlupiksGridView extends StatelessWidget {
  const ChlupiksGridView({required this.children, Key? key}) : super(key: key);
  final List<Query$homepage$children?>? children;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: .77,
      ),
      itemBuilder: (_, i) => ChlupikDetail(
        child: children![i]!,
      ),
      // itemCount: state.chlupiks.length,
      itemCount: children!.length,
    );
  }
}
