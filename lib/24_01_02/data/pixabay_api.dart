import 'dart:convert';

import 'package:my_flutter_image_grid_app/24_01_02/data/http_connection.dart';
import 'package:my_flutter_image_grid_app/24_01_02/model/pixabay.dart';
import 'package:my_flutter_image_grid_app/constant/constant.dart';
import 'package:my_flutter_image_grid_app/logger/simple_logger.dart';

class PixabayApi {
  Future<Pixabay> getImageResult(String query) async {
    final query = {
      "key": PIXABAY_API_KEY,
      "q": "",
      "image_type": "photo",
      "pretty": "true",
    };

    final response =
        await HttpConnection(PIXABAY_BASE_URL, query).apiConnection();
    logger.info('qwerasdf response statusCode => ${response.statusCode}');
    if (response.statusCode == 200) {
      return Pixabay.fromJson(jsonDecode(response.body));
    }
    throw Exception();
  }
}
