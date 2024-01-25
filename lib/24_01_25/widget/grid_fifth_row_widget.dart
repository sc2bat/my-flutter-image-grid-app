import 'package:flutter/material.dart';

class GridFifthRowWidget extends StatelessWidget {
  const GridFifthRowWidget({
    super.key,
    required this.isCollected,
  });

  final bool isCollected;

  final double pokemonImageSize = 72.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
          width: pokemonImageSize,
          height: pokemonImageSize,
          color: isCollected ? null : Colors.black45,
        ),
      ],
    );
  }
}
