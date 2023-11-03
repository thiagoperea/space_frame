import 'package:flutter/material.dart';

class PictureListLoading extends StatelessWidget {
  const PictureListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("NOW WE ARE LOADING"),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
