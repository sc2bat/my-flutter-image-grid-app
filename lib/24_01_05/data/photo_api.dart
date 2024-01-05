// photo 를 가져오는 함수
import 'dart:convert';

import 'package:my_flutter_image_grid_app/24_01_05/data/photo_api_repository.dart';
import 'package:my_flutter_image_grid_app/24_01_05/model/photo.dart';
import 'package:my_flutter_image_grid_app/constant/constant.dart';
import 'package:my_flutter_image_grid_app/logger/simple_logger.dart';
import 'package:http/http.dart' as http;

class PhotoApi implements PHotoApiRepository {
  @override
  Future<List<Hit>> fetch(String query) async {
    final response = await http
        .get(Uri.parse('$PIXABAY_BASE_URL&key=$PIXABAY_API_KEY&q=$query'));

    if (response.statusCode == 200) {
      Photo photo = Photo.fromJson(jsonDecode(response.body));
      return photo.hits;
    }

    logger.info('qwerasdf get photos response error');
    throw Exception();
  }
}
