import 'package:flutter/material.dart';

class PictureListError extends StatelessWidget {
  final String? errorMessage;

  const PictureListError(String? this.errorMessage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("ErrorMessage: $errorMessage"),
    );
  }
}
