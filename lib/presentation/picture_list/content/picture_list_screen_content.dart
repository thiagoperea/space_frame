import 'package:flutter/material.dart';
import 'package:space_frame/data/model/nasa_picture.dart';

class PictureListScreenContent extends StatelessWidget {
  final List<NasaPicture> pictureList;

  const PictureListScreenContent({
    super.key,
    required List<NasaPicture> this.pictureList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Here we will be showing the list!!!"),
        Text("object: ${pictureList.toString()}"),
      ],
    );
  }
}
