import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:space_frame/data/model/nasa_picture.dart';
import 'package:space_frame/data/model/response.dart';
import 'package:space_frame/presentation/picture_list/picture_list_view_model.dart';

import 'content/picture_list_error.dart';
import 'content/picture_list_loading.dart';
import 'content/picture_list_screen_content.dart';

class PictureListScreen extends StatefulWidget {
  const PictureListScreen({super.key});

  @override
  State<PictureListScreen> createState() => _PictureListScreenState();
}

class _PictureListScreenState extends State<PictureListScreen> {
  @override
  void initState() {
    super.initState();

    var viewModel = Provider.of<PictureListViewModel>(context, listen: false);
    viewModel.getPictureList();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PictureListViewModel>(
      builder: (context, viewModel, child) {
        switch (viewModel.screenState) {
          case Loading<List<NasaPicture>>():
            return PictureListLoading();
          case Success<List<NasaPicture>>():
            var pictureList = (viewModel.screenState as Success<List<NasaPicture>>).data;
            return PictureListScreenContent(pictureList: pictureList);
          case Error<List<NasaPicture>>():
            String? errorMessage = (viewModel.screenState as Error<List<NasaPicture>>).message;
            return PictureListError(errorMessage);
        }
      },
    );
  }
}
