import 'package:flutter/material.dart';

class GridTypeImageWidget extends StatelessWidget {
  final bool isCollected;
  final String typeImageUrl;
  final double typeimageSize;
  final double iconSize;
  const GridTypeImageWidget({
    super.key,
    required this.isCollected,
    required this.typeImageUrl,
    required this.typeimageSize,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: isCollected
          ? Image.network(
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
              width: 24.0,
              height: 24.0,
            )
          : Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black45,
                    width: 2.0,
                  )),
              child: const Icon(
                Icons.question_mark_rounded,
                color: Colors.black45,
                size: 20.0,
              ),
            ),
    );
  }
}
