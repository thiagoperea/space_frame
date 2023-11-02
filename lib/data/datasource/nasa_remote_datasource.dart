import 'package:space_frame/data/model/nasa_picture.dart';

abstract class NasaRemoteDatasource {
  Future<List<NasaPicture>> getPictures({required int page});
}

class NasaRemoteDatasourceImpl implements NasaRemoteDatasource {
  @override
  Future<List<NasaPicture>> getPictures({required int page}) async {
    // try to get [page] page from api

    // if statusCode 200 then return the value

    // otherwise throws an exception (will be caught in the repo)
    throw UnimplementedError();
  }
}
