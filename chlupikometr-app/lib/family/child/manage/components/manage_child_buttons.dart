import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../bloc/manage_child_bloc.dart';

class BtnTakePicture extends StatelessWidget {
  const BtnTakePicture({
    required this.state,
    required this.manageChildBloc,
    Key? key,
  }) : super(key: key);

  final ManageChildEditing state;
  final ManageChildBloc manageChildBloc;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: state.isSubmitted
          ? null
          : () {
              final picker = ImagePicker();
              final xFile = picker.pickImage(source: ImageSource.camera);
              manageChildBloc.add(OnManageChildPicturePicked(xFile));
            },
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 8,
        children: const [
          Text('Vyfotit'),
          Icon(Icons.add_a_photo_outlined),
        ],
      ),
    );
  }
}

class BtnPickFromPhotoLibrary extends StatelessWidget {
  const BtnPickFromPhotoLibrary({
    required this.state,
    required this.manageChildBloc,
    Key? key,
  }) : super(key: key);

  final ManageChildEditing state;
  final ManageChildBloc manageChildBloc;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: state.isSubmitted
          ? null
          : () {
              final picker = ImagePicker();
              final xFile = picker.pickImage(source: ImageSource.gallery);
              manageChildBloc.add(OnManageChildPicturePicked(xFile));
            },
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 8,
        children: const [
          Text('Vybrat z galerie'),
          Icon(Icons.photo_library_outlined),
        ],
      ),
    );
  }
}
