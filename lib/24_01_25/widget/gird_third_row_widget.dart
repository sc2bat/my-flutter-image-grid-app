import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/24_01_25/widget/grid_type_image_widget.dart';

class GirdThirdRowWidget extends StatelessWidget {
  const GirdThirdRowWidget({
    super.key,
    required this.isCollected,
    required this.typeImageUrl,
    required this.typeimageSize,
    required this.iconSize,
  });

  final bool isCollected;
  final String typeImageUrl;
  final double typeimageSize;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(8.0, 8.0, 0, 0),
          child: Text(
            '0001',
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Row(
            children: [
              Column(
                children: [
                  GridTypeImageWidget(
                    isCollected: isCollected,
                    typeImageUrl: typeImageUrl,
                    typeimageSize: typeimageSize,
                    iconSize: iconSize,
                  ),
                  GridTypeImageWidget(
                    isCollected: isCollected,
                    typeImageUrl: typeImageUrl,
                    typeimageSize: typeimageSize,
                    iconSize: iconSize,
                  ),
                  // isCollected
                  //     ? Image.network(
                  //         'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
                  //         width: 24.0,
                  //         height: 24.0,
                  //       )
                  //     : Container(
                  //         decoration: BoxDecoration(
                  //             shape: BoxShape.circle,
                  //             border: Border.all(
                  //               color: Colors.black45,
                  //               width: 2.0,
                  //             )),
                  //         child: const Icon(
                  //           Icons.question_mark_rounded,
                  //           color: Colors.black45,
                  //           size: 20.0,
                  //         ),
                  //       ),
                  // const SizedBox(
                  //   height: 2.0,
                  // ),
                  // isCollected
                  //     ? Image.network(
                  //         'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
                  //         width: 24.0,
                  //         height: 24.0,
                  //       )
                  //     : Container(
                  //         decoration: BoxDecoration(
                  //             shape: BoxShape.circle,
                  //             border: Border.all(
                  //               color: Colors.black45,
                  //               width: 2.0,
                  //             )),
                  //         child: const Icon(
                  //           Icons.question_mark_rounded,
                  //           color: Colors.black45,
                  //           size: 20.0,
                  //         ),
                  //       ),
                ],
              ),
              Image.network(
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
                width: 90.0,
                height: 90.0,
                color: isCollected ? null : Colors.black45,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
