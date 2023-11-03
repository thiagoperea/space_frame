import 'package:flutter/foundation.dart';
import 'package:space_frame/data/model/response.dart';

import '../../data/datasource/nasa_local_datasource.dart';
import '../../data/datasource/nasa_remote_datasource.dart';
import '../../data/model/nasa_picture.dart';
import '../../data/repository/nasa_repository.dart';
import '../../domain/usecase/get_picture_list.dart';

class PictureListViewModel extends ChangeNotifier {
  GetPictureList _getPictureListUseCase = GetPictureList(
    NasaRepositoryImpl(
      remoteDatasource: NasaRemoteDatasourceImpl(),
      localDatasource: NasaLocalDatasourceImpl(),
    ),
  );

  int _currentPage = 0;

  ResponseState<List<NasaPicture>> screenState = Loading<List<NasaPicture>>();

  void getPictureList() async {
    screenState = Loading();
    notifyListeners();

    await Future.delayed(Duration(seconds: 10));

    screenState = Success(data: List.empty(growable: false));
    notifyListeners();

    await Future.delayed(Duration(seconds: 10));

    screenState = Error(message: "ERROR :(");
    notifyListeners();
  }
}
