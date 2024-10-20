import 'dart:async';

import 'package:chlupikometr_lite/common/error_state_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../bloc/family_member_invite_bloc.dart';

class FamilyMemberInviteView extends StatelessWidget {
  const FamilyMemberInviteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final states = {
      FamilyMemberInviteLoading: (_) => const _StateLoading(),
      FamilyMemberInviteLoaded: (state) => _StateLoaded(state),
      FamilyMemberInviteError: (state) => StateError(state),
    };
    return BlocBuilder<FamilyMemberInviteBloc, FamilyMemberInviteState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: states[state.runtimeType]!(state),
          ),
        );
      },
    );
  }
}

class _StateLoaded extends StatelessWidget {
  const _StateLoaded(this.state, {Key? key}) : super(key: key);

  final FamilyMemberInviteLoaded state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QrImage(
          data: state.token,
          errorCorrectionLevel: QrErrorCorrectLevel.H,
        ),
        _Countdown(
          token: state.token,
          textStyle: Theme.of(context).textTheme.headline3!,
        ),
      ],
    );
  }
}

class _Countdown extends StatefulWidget {
  const _Countdown({
    required this.token,
    required this.textStyle,
    Key? key,
  }) : super(key: key);

  final String token;
  final TextStyle textStyle;

  @override
  State<_Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<_Countdown> {
  Timer? timer;

  void _redraw() {
    timer = Timer(
      const Duration(milliseconds: 100),
      () => setState(() {
        _redraw();
      }),
    );
  }

  @override
  void initState() {
    _redraw();
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final remainingTime = JwtDecoder.getRemainingTime(widget.token);
    if(remainingTime.isNegative) {
      timer?.cancel();
      Future(() => Navigator.of(context).pop());
    }
    return Text(
      remainingTime.toString().substring(2, 7),
      style: widget.textStyle,
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
