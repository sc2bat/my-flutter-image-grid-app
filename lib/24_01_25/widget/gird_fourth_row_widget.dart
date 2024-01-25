import 'package:flutter/material.dart';

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
              Image.network(
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
                width: pokemonImageSize,
                height: pokemonImageSize,
                color: isCollected ? null : Colors.black45,
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
