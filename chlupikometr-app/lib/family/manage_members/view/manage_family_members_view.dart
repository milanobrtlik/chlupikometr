import 'package:cached_network_image/cached_network_image.dart';
import 'package:chlupikometr_lite/common/error_state_helper.dart';
import 'package:chlupikometr_lite/family/child/manage/view/manage_child_view.dart';
import 'package:chlupikometr_lite/family/child/manage/view/update_child_view.dart';
import 'package:chlupikometr_lite/family/components/dialog_leave.dart';
import 'package:chlupikometr_lite/family/manage_members/bloc/manage_family_members_bloc.dart';
import 'package:chlupikometr_lite/family/manage_members/view/family_member_invite_page.dart';
import 'package:chlupikometr_lite/home_page/bloc/homepage_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../schema.graphql.dart';
import '../../components/dialog_remove_user.dart';
import '../graphql/manage_family_members.graphql.dart';

class ManageFamilyMembersView extends StatelessWidget {
  const ManageFamilyMembersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final states = {
      ManageFamilyMembersLoading: (_) => const _StateLoading(),
      ManageFamilyMembersLoaded: (state) => _StateLoaded(state),
      ManageFamilyMembersError: (state) => StateError(state),
      ManageFamilyMembersLeaved: (_) => const _StateLeaved(),
    };
    return BlocBuilder<ManageFamilyMembersBloc, ManageFamilyMembersState>(
      builder: (ctx, state) => Scaffold(
        appBar: AppBar(
          title: state is ManageFamilyMembersLoaded
              ? Text(
                  state.me.familyUser!
                      .where(
                          (e) => e.family!.id == Hive.box('family').get('id'))
                      .single
                      .family!
                      .name,
                )
              : null,
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.edit_outlined)),
          ],
        ),
        body: states[state.runtimeType]!(state),
      ),
    );
  }
}

class _StateLeaved extends StatelessWidget {
  const _StateLeaved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<HomepageBloc>().add(OnHomepageEntered());
    Future(() => Navigator.of(context).pop());
    return Container();
  }
}

class _StateLoaded extends StatelessWidget {
  const _StateLoaded(this.state, {Key? key}) : super(key: key);

  final ManageFamilyMembersLoaded state;

  @override
  Widget build(BuildContext context) {
    if (state.error != null) {
      Future(
        () => showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: const Text('Chyba'),
            content: Text(state.error!.code == 'FOUNDER_CANNOT_LEAVE'
                ? 'Jste zakladatel rodiny, nemůžete ji opustit dokud v ní budou nějací členové. Musíte nejdříve odebrat všechny členy. Opuštěním prázdné rodiny rodina zanikne a dojde ke smazání veškerých dat.'
                : state.error!.code),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Rozumím'),
              ),
            ],
          ),
        ).then(
          (_) => context
              .read<ManageFamilyMembersBloc>()
              .add(OnManageFamilyMemberErrorClosed()),
        ),
      );
    }
    return ListView(
      shrinkWrap: true,
      children: [
        const _Header('Rodiče'),
        for (var parent in state.parents) ...[
          _ParentTile(parent: parent, state: state),
        ],
        if (_canAddParent(state))
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const FamilyMemberInvitePage(
                    Enum$FamilyUserKind.PARENT,
                  ),
                ),
              ),
              child: const Icon(Icons.add),
            ),
          ),
        const Divider(),
        const _Header('Děti'),
        for (var child in state.children) ...[
          _ChildTile(state: state, child: child),
        ],
        if (_canAddChild(state))
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (_) => BlocProvider.value(
                  value: context.read<ManageFamilyMembersBloc>(),
                  child: const ManageChildView(),
                ),
              ),
              child: const Icon(Icons.add),
            ),
          ),
        const Divider(),
        const _Header('Hlídání'),
        if (_canAddBabysitter(state) || state.babysitters.isNotEmpty)
          for (var babysitter in state.babysitters) ...[
            _BabysitterTile(babysitter: babysitter, state: state),
          ],
        if (_canAddBabysitter(state))
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const FamilyMemberInvitePage(
                    Enum$FamilyUserKind.BABYSITTER,
                  ),
                ),
              ),
              child: const Icon(Icons.add),
            ),
          ),
      ],
    );
  }
}

class _BabysitterTile extends StatelessWidget {
  const _BabysitterTile({
    required this.babysitter,
    required this.state,
    Key? key,
  }) : super(key: key);

  final Query$manageFamilyMembers$babysitters babysitter;
  final ManageFamilyMembersLoaded state;

  @override
  Widget build(BuildContext context) {
    Widget? trailing;
    if (babysitter.id == state.me.id) {
      trailing = const _BtnLeave();
    } else if (_canRemoveBabysitter(state)) {
      trailing = _BtnRemove(userId: babysitter.id, userName: babysitter.name);
    }
    return _UserTile(
      name: babysitter.name,
      pictureUrl: babysitter.pictureUrl,
      trailing: trailing,
    );
  }
}

class _ParentTile extends StatelessWidget {
  const _ParentTile({
    required this.parent,
    required this.state,
    Key? key,
  }) : super(key: key);

  final Query$manageFamilyMembers$parents parent;
  final ManageFamilyMembersLoaded state;

  @override
  Widget build(BuildContext context) {
    Widget? trailing;
    if (parent.id == state.me.id) {
      trailing = const _BtnLeave();
    } else if (_amIFounder(state)) {
      trailing = _BtnRemove(userId: parent.id, userName: parent.name);
    }
    return _UserTile(
      name: parent.name,
      pictureUrl: parent.pictureUrl,
      trailing: trailing,
    );
  }
}

class _BtnLeave extends StatelessWidget {
  const _BtnLeave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => showDialog(
        context: context,
        builder: (_) => const DialogLeave(),
      ).then((value) {
        if (value == 1) {
          context
              .read<ManageFamilyMembersBloc>()
              .add(OnManageFamilyMembersLeave());
        }
      }),
      icon: const Icon(Icons.logout_outlined),
    );
  }
}

class _BtnRemove extends StatelessWidget {
  const _BtnRemove({
    required this.userId,
    required this.userName,
    Key? key,
  }) : super(key: key);

  final int userId;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => showDialog(
        context: context,
        builder: (_) => DialogRemoveUser(userName),
      ).then((value) {
        if (value == 1) {
          context
              .read<ManageFamilyMembersBloc>()
              .add(OnManageFamilyMembersRemove(userId));
        }
      }),
      icon: const Icon(Icons.person_remove_outlined),
    );
  }
}

class _ChildTile extends StatelessWidget {
  const _ChildTile({
    required this.state,
    required this.child,
    Key? key,
  }) : super(key: key);

  final ManageFamilyMembersLoaded state;
  final Query$manageFamilyMembers$children child;

  @override
  Widget build(BuildContext context) {
    Widget? trailing;
    if (state.me.id == child.id) {
      trailing = const _BtnLeave();
    } else if (_canRemoveChild(state)) {
      trailing = Wrap(
        children: [
          IconButton(
            onPressed: () => showDialog(
              context: context,
              builder: (_) => BlocProvider.value(
                value: context.read<ManageFamilyMembersBloc>(),
                child: UpdateChildView(child),
              ),
            ),
            icon: const Icon(Icons.edit_outlined),
          ),
          _BtnRemove(userId: child.id, userName: child.name),
        ],
      );
    }
    return _UserTile(
      name: child.name,
      pictureUrl: child.pictureUrl,
      trailing: trailing,
    );
  }
}

class _UserTile extends StatelessWidget {
  const _UserTile({
    required this.name,
    required this.pictureUrl,
    required this.trailing,
    Key? key,
  }) : super(key: key);

  final String name;
  final String? pictureUrl;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage:
            pictureUrl == null ? null : CachedNetworkImageProvider(pictureUrl!),
        child: pictureUrl == null ? Text(name[0]) : null,
      ),
      title: Text(name),
      trailing: trailing,
    );
  }
}

class _StateLoading extends StatelessWidget {
  const _StateLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _Header extends StatelessWidget {
  const _Header(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6?.copyWith(
              color: Theme.of(context).colorScheme.outline,
            ),
      ),
    );
  }
}

bool _canAddParent(ManageFamilyMembersLoaded state) {
  return _amIFounder(state);
}

bool _canRemoveParent(ManageFamilyMembersLoaded state) {
  return _amIFounder(state);
}

bool _canAddBabysitter(ManageFamilyMembersLoaded state) {
  return _amIFounder(state) || _amIParent(state);
}

bool _canRemoveBabysitter(ManageFamilyMembersLoaded state) {
  return _amIFounder(state) || _amIParent(state);
}

bool _canAddChild(ManageFamilyMembersLoaded state) {
  return _amIFounder(state) || _amIParent(state);
}

bool _canRemoveChild(ManageFamilyMembersLoaded state) {
  return _amIFounder(state) || _amIBabysitter(state);
}

bool _amIFounder(ManageFamilyMembersLoaded state) {
  return _myFamilyRole(state).kind == Enum$FamilyUserKind.FOUNDER;
}

bool _amIParent(ManageFamilyMembersLoaded state) {
  return _myFamilyRole(state).kind == Enum$FamilyUserKind.PARENT;
}

bool _amIBabysitter(ManageFamilyMembersLoaded state) {
  return _myFamilyRole(state).kind == Enum$FamilyUserKind.BABYSITTER;
}

bool _amIChild(ManageFamilyMembersLoaded state) {
  return _myFamilyRole(state).kind == Enum$FamilyUserKind.CHILD;
}

Query$manageFamilyMembers$me$familyUser _myFamilyRole(
  ManageFamilyMembersLoaded state,
) {
  final meId = state.me.id;
  final familyId = Hive.box('family').get('id');
  final familyUsers = state.me.familyUser;

  return familyUsers!.where((e) => e.family!.id == familyId).single;
}
