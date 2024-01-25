import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/24_01_25/widget/grid_type_image_widget.dart';
import 'package:my_flutter_image_grid_app/24_01_25/widget/pokemon_id_text_widget.dart';

class GirdThirdRowWidget extends StatelessWidget {
  const GirdThirdRowWidget({
    super.key,
    required this.isCollected,
    required this.typeImageUrl,
  });

  final bool isCollected;
  final String typeImageUrl;
  final double typeimageSize = 24.0;
  final double iconSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 0.0),
          child: PokemonIdTextWidget(),
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
