import 'package:my_flutter_image_grid_app/24_01_05/model/photo.dart';

abstract class PHotoApiRepository {
  Future<List<Hit>> fetch(String query);
}
