import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/24_01_05/model/photo.dart';

class PhotoWidget extends StatelessWidget {
  final Hit hit;
  const PhotoWidget({
    super.key,
    required this.hit,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Image.network(
        // 'https://pixabay.com/get/g99b4b1ecaef27d5921160f1e89eb78abb53ebb1cb62203f164150a26b870fd6fa55dbfce40926aa2a80217652874a2b9a9998ce6000b3c92256346d36f7e6195_640.jpg',
        hit.previewURL,
        fit: BoxFit.cover,
      ),
    );
  }
}
