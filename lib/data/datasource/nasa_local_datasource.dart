import 'package:space_frame/data/model/nasa_picture.dart';

abstract class NasaLocalDatasource {
  Future<void>? savePicture({required NasaPicture picture});

  Future<List<NasaPicture>> getPictures();
}

class NasaLocalDatasourceImpl implements NasaLocalDatasource {
  @override
  Future<void>? savePicture({required NasaPicture picture}) {
    // check if this picture is in database:
    // yes - do nothing
    // no - save this picture
    throw UnimplementedError();
  }

  @override
  Future<List<NasaPicture>> getPictures() {
    // retrieve the entire saved list
    throw UnimplementedError();
  }
}
