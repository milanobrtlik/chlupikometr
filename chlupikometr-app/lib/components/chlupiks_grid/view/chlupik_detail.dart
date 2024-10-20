import 'package:cached_network_image/cached_network_image.dart';
import 'package:chlupikometr_lite/ledger/detail/view/ledger_child_detail_page.dart';
import 'package:flutter/material.dart';

import '../../../home_page/graphql/homepage.graphql.dart';

class ChlupikDetail extends StatelessWidget {
  const ChlupikDetail({required this.child, Key? key}) : super(key: key);

  final Query$homepage$children child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => LedgerChildDetailPage(
            child: child,
          ),
        ),
      ),
      child: Card(
        // elevation: 0,
        // color: Theme.of(context).colorScheme.onInverseSurface,
        child: Wrap(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl: child.pictureUrl!,
                fit: BoxFit.fill,
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(child.name),
                  Row(
                    children: [
                      Text(child.points.toString()),
                      const SizedBox(width: 4),
                      Image.asset(
                        'assets/coin_icon.png',
                        height: 24,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
