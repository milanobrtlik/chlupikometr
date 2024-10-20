import 'package:cached_network_image/cached_network_image.dart';
import 'package:chlupikometr_lite/components/chlupiks_grid/view/chlupiks_grid_view.dart';
import 'package:chlupikometr_lite/components/inventory_list/view/inventory_list_view.dart';
import 'package:chlupikometr_lite/components/main_menu/view/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../family/pick_a_family/view/pick_a_family_view.dart';
import '../bloc/homepage_bloc.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bodies = {
      HomepageLoaded: (state) => _StateHomepageLoaded(state),
      HomepageLoading: (_) => const _StateLoading(),
      HomepageFamilyPicking: (state) => _StatePickAFamily(state),
      HomepageError: (state) => _StateError(state),
    };
    final homepageBloc = context.read<HomepageBloc>();
    final actions = {
      HomepageLoaded: (state) => _getActions(context, state, homepageBloc),
      HomepageLoading: (_) => null,
      HomepageFamilyPicking: (_) => null,
      HomepageError: (_) => null,
    };
    return BlocBuilder<HomepageBloc, HomepageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            surfaceTintColor: Theme.of(context).colorScheme.background,
            centerTitle: true,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/logo.webp', height: 64),
                const SizedBox(width: 4),
                const Text('Chlupíkometr'),
              ],
            ),
            actions: actions[state.runtimeType]!(state),
          ),
          body: bodies[state.runtimeType]!(state),
        );
      },
    );
  }
}

List<Widget> _getActions(
  context,
  HomepageLoaded state,
  HomepageBloc homepageBloc,
) {
  return [
    OutlinedButton(
      onPressed: () => showDialog(
        context: context,
        builder: (context) => BlocProvider.value(
          value: homepageBloc,
          child: MainMenuView(
            me: state.me,
          ),
        ),
      ),
      style: OutlinedButton.styleFrom(
        shape: const CircleBorder(),
        side: BorderSide.none,
      ),
      child: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(
          state.me.pictureUrl,
        ),
        backgroundColor: Colors.transparent,
      ),
    ),
  ];
}

class _StatePickAFamily extends StatelessWidget {
  const _StatePickAFamily(this.state, {Key? key}) : super(key: key);

  final HomepageFamilyPicking state;

  @override
  Widget build(BuildContext context) {
    return PickAFamilyView(state);
  }
}

class _StateHomepageLoaded extends StatelessWidget {
  const _StateHomepageLoaded(this.state, {Key? key}) : super(key: key);

  final HomepageLoaded state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChlupiksGridView(children: state.children),
        Flexible(child: InventoryListView(inventories: state.inventory)),
      ],
    );
  }
}

class _StateLoading extends StatelessWidget {
  const _StateLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _StateError extends StatelessWidget {
  const _StateError(this.state, {Key? key}) : super(key: key);

  final HomepageError state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var message in state.toString().split('\n')) ...[
          Text(message),
        ],
      ],
    );
  }
}
