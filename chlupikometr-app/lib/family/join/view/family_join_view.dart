import 'package:chlupikometr_lite/common/error_state_helper.dart';
import 'package:chlupikometr_lite/family/join/bloc/join_family_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../components/camera/view/camera_view.dart';

class FamilyJoinView extends StatelessWidget {
  const FamilyJoinView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final states = {
      JoinFamilyScanning: (_) => const _StateScanning(),
      JoinFamilyLoading: (_) => const _StateLoading(),
      JoinFamilyError: (state) => StateError(state),
      JoinFamilyFailed: (_) => const _StateFailed(),
      JoinFamilyJoined: (_) {
        Navigator.of(context).pop();
        return null;
      },
    };
    return BlocBuilder<JoinFamilyBloc, JoinFamilyState>(
      builder: (ctx, state) => Scaffold(
        body: states[state.runtimeType]!(state),
      ),
    );
  }
}

class _StateFailed extends StatelessWidget {
  const _StateFailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        direction: Axis.vertical,
        children: [
          const Text('Připojení se nezdařilo'),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Zpět'),
          ),
        ],
      ),
    );
  }
}

class _StateScanning extends StatelessWidget {
  const _StateScanning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CameraView(
      (image) => context.read<JoinFamilyBloc>().add(
            OnCameraImageReceived(image),
          ),
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
