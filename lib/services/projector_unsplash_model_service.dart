import 'package:dio/dio.dart';
import 'package:flutter_app/models/projector_unsplash_model.dart';
class ProjectorUnsplashModelService {
  var dio = Dio();

  Future<List<ProjectorUnsplashModel>> fetchFhotos() async {
    String url =
        'https://api.unsplash.com/photos/?client_id=HPuOOfFpZTUuWBbst59oWy6qrCNclA1xtJowlqdS9mI';
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      final result = response.data;
      Iterable list = result;
      return list.map((e) => ProjectorUnsplashModel.fromJson(e)).toList();
    } else {
      throw Exception('Error.!');
    }
  }
}