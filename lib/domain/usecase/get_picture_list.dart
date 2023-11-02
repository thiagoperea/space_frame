import 'package:space_frame/data/model/nasa_picture.dart';
import 'package:space_frame/data/repository/nasa_repository.dart';

import '../../data/model/response.dart';

class GetPictureList {
  final NasaRepository repository;

  GetPictureList(this.repository);

  Future<ResponseState<List<NasaPicture>>> execute({required int page}) async {
    return await repository.getPictureList(page: page);
  }
}