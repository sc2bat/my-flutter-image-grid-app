import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/24_01_25/widget/grid_type_image_widget.dart';
import 'package:my_flutter_image_grid_app/24_01_25/widget/pokemon_id_text_widget.dart';

class GridSecondRowWidget extends StatelessWidget {
  const GridSecondRowWidget({
    super.key,
    required this.isCollected,
    required this.typeImageUrl,
  });

  final bool isCollected;
  final String typeImageUrl;
  final double typeimageSize = 32.0;
  final double iconSize = 24.0;

  final double pokemonImageSize = 152.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(8.0, 8.0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '이상해씨',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 32.0,
              ),
              PokemonIdTextWidget(),
            ],
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
                ],
              ),
              Image.network(
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
                width: pokemonImageSize,
                height: pokemonImageSize,
                color: isCollected ? null : Colors.black45,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
