import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/24_01_25/widget/pokemon_image_widget.dart';

import 'pokemon_id_text_widget.dart';

class GridFourthRowWidget extends StatelessWidget {
  const GridFourthRowWidget({
    super.key,
    required this.isCollected,
  });

  final bool isCollected;

  final double pokemonImageSize = 90.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              PokemonImageWidget(
                isCollected: isCollected,
                pokemonImageSize: pokemonImageSize,
              ),
              const Positioned(
                top: 4.0,
                right: 4.0,
                child: PokemonIdTextWidget(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
