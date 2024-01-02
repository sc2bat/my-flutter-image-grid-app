import 'package:my_flutter_image_grid_app/24_01_02/model/image_item.dart';
import 'package:my_flutter_image_grid_app/24_01_02/model/pixabay.dart';

class PixabayToImageItem {
  List<ImageItem> convertToImageItem(Pixabay data) {
    final List<Hit> hitsData = data.hits;
    return hitsData
        .map((e) => ImageItem(imageUrl: e.largeImageURL, tags: e.tags))
        .toList();
  }
}
