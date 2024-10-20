import 'package:cached_network_image/cached_network_image.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:chlupikometr_lite/ledger/detail/view/ledger_record_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/ledger_child_detail_bloc.dart';
import '../graphql/ledger_child_detail.graphql.dart';

class _StateDataAvailable extends StatelessWidget {
  const _StateDataAvailable(this.state, {Key? key}) : super(key: key);

  final LedgerChildDetailLoaded state;

  List<charts.Series<String, String>> _data2Series(
    List<Query$ledgerChildDetail$ledgerList> data,
  ) {
    Map<String, int> processed = {};
    for (var item in data) {
      processed.update(
        '${item.enteredAt.day}. ${item.enteredAt.month}.',
        (value) => value + item.reward,
        ifAbsent: () => item.reward,
      );
    }
    var keys = processed.entries.map((e) => e.key).toList().reversed.toList();
    return [
      charts.Series(
        id: 'Body podle dní',
        data: keys,
        domainFn: (i, _) => i,
        measureFn: (i, _) => processed[i],
      ),
    ];
  }

  Map<String, List<Query$ledgerChildDetail$ledgerList>> _groupedDays(
      List<Query$ledgerChildDetail$ledgerList> data) {
    Map<String, List<Query$ledgerChildDetail$ledgerList>> processed = {};
    for (var item in data) {
      processed.update(
        '${item.enteredAt.day}. ${item.enteredAt.month}.',
        (value) => value..add(item),
        ifAbsent: () => [item],
      );
    }
    return processed;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        centerTitle: true,
        title: Wrap(
          spacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(
                state.child.pictureUrl!,
              ),
            ),
            Text(state.child.name),
          ],
        ),
      ),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverPersistentHeader(
            delegate: _Delegate(
              min: 270,
              max: 270,
              child: _ChartHeader(_data2Series(state.data)),
            ),
            pinned: true,
          ),
          for (var item in _groupedDays(state.data).entries) ...[
            SliverPersistentHeader(
              delegate: _Delegate(
                max: 20,
                min: 20,
                child: _DateHeader(item.key),
              ),
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (ctx, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(
                      item.value[index].parent.pictureUrl!,
                    ),
                  ),
                  title: Text(item.value[index].title),
                  trailing: Text(item.value[index].reward.toString()),
                  onTap: () => showDialog(
                    context: context,
                    builder: (_) => LedgerRecordDetailView(item.value[index].id),
                    // builder: (_) => BlocProvider.value(
                    //   value: context.read<,
                    //   child: LedgerRecordDetailView(),
                    // ),
                  ),
                ),
                childCount: item.value.length,
              ),
            )
          ],
        ],
      ),
    );
  }
}

class _DateHeader extends StatelessWidget {
  const _DateHeader(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          title,
          style: TextStyle(
            color: Theme.of(context).colorScheme.outline,
            fontWeight: FontWeight.bold,
            // fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class _ChartHeader extends StatelessWidget {
  const _ChartHeader(this.data, {Key? key}) : super(key: key);

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      height: 270,
      child: charts.BarChart(data),
    );
  }
}

class _Delegate extends SliverPersistentHeaderDelegate {
  _Delegate({required this.child, this.min = 18, this.max = 270});

  final Widget child;
  final double min;
  final double max;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return child;
  }

  @override
  double get maxExtent => max;

  @override
  double get minExtent => min;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class LedgerChildDetailView extends StatelessWidget {
  const LedgerChildDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LedgerChildDetailBloc, LedgerChildDetailState>(
      builder: (context, state) {
        if (state is LedgerChildDetailLoading) {
          return const _StateLoading();
        }
        if (state is LedgerChildDetailLoaded) {
          return _StateDataAvailable(state);
        }
        if (state is LedgerChildDetailError) {
          return _StateError(state.message);
        }
        if (state is LedgerChildDetailInitial) {
          return const _StateInitial();
        }

        throw Exception('Unknown state');
      },
    );
  }
}

class _StateLoading extends StatelessWidget {
  const _StateLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class _StateError extends StatelessWidget {
  const _StateError(this.error, {Key? key}) : super(key: key);

  final String error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text(error),
      ),
    );
  }
}

class _StateInitial extends StatelessWidget {
  const _StateInitial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(),
    );
  }
}
