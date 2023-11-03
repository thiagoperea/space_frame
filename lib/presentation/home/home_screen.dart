import 'package:flutter/material.dart';

import '../picture_list/picture_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Home"),
      ),
      body: PictureListScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _onFabPressed(context);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
    ;
  }

  void _onFabPressed(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Fab was pressed!"),
      ),
    );
  }
}
