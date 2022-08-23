import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageWidget extends StatelessWidget {
  final File image;
  final ValueChanged<ImageSource> onClicked;

  const ImageWidget({Key? key, required this.image, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
