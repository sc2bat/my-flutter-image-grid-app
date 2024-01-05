import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_flutter_image_grid_app/23_12_28/model/album_model.dart';
import 'package:my_flutter_image_grid_app/logger/simple_logger.dart';

class AlbumApiService {
  static const baseUrl = 'https://jsonplaceholder.typicode.com/photos';

  Future<List<AlbumModel>> getAlbumApi() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      logger.info('qwerasdf getAlbumApi');
      final albumInstance = jsonDecode(response.body)
          .map((e) => AlbumModel.fromMap(e as Map<String, dynamic>))
          .toList();
      logger.info('qwerasdf albumInstance ${albumInstance.length}');
      return albumInstance;
    }
    throw Error();
  }
}
