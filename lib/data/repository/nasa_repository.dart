import 'package:space_frame/data/datasource/nasa_local_datasource.dart';
import 'package:space_frame/data/datasource/nasa_remote_datasource.dart';
import 'package:space_frame/data/model/response.dart';

import '../model/nasa_picture.dart';

abstract class NasaRepository {
  Future<ResponseState<List<NasaPicture>>> getPictureList({required int page});
}

class NasaRepositoryImpl implements NasaRepository {
  final NasaRemoteDatasource remoteDatasource;
  final NasaLocalDatasource localDatasource;

  NasaRepositoryImpl({
    required this.remoteDatasource,
    required this.localDatasource,
  });

  @override
  Future<ResponseState<List<NasaPicture>>> getPictureList({required int page}) {
    //TODO:
    // am I online?
    // yes - load from remote
    // no - load from local

    throw UnimplementedError();
  }
}
