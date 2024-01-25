import 'package:flutter/material.dart';

import 'pokemon_image_widget.dart';

class GridFifthRowWidget extends StatelessWidget {
  const GridFifthRowWidget({
    super.key,
    required this.isCollected,
  });

  final bool isCollected;

  final double pokemonImageSize = 72.0;

  @override
  Widget build(BuildContext context) {
    return PokemonImageWidget(
      isCollected: isCollected,
      pokemonImageSize: pokemonImageSize,
    );
  }
}
