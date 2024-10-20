import 'package:flutter/material.dart';

import '../bloc/manage_child_bloc.dart';

class ManageChildTextField extends StatelessWidget {
  ManageChildTextField({
    this.defaultValue,
    required this.state,
    required this.manageChildBloc,
    Key? key,
  }) : super(key: key);

  final String? defaultValue;
  final ManageChildEditing state;
  final ManageChildBloc manageChildBloc;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text = state.name ?? defaultValue ?? '';
    controller.selection = TextSelection.collapsed(
      offset: controller.text.length,
    );
    return TextField(
      controller: controller,
      enabled: state.isSubmitted == false,
      onChanged: (value) => manageChildBloc.add(
        OnManageChildNameChanged(value),
      ),
      decoration: InputDecoration(
        labelText: "Jméno",
        errorText: state.nameError,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(600)),
        ),
      ),
    );
  }
}
