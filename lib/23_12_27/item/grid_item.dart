import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/23_12_27/model/image_model.dart';

class GridItem extends StatelessWidget {
  final ImageModel image;

  const GridItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal.withOpacity(0.4), // 그리드 아이템의 배경색
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.network(
            image.imageUrl,
          ),
        ),
        // Text(
        //   'Item $index',
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 18.0,
        //   ),
        // ),
      ),
    );
  }
}
