import 'package:flutter/material.dart';

class PokemonImageWidget extends StatelessWidget {
  const PokemonImageWidget({
    super.key,
    required this.isCollected,
    required this.pokemonImageSize,
  });

  final bool isCollected;
  final double pokemonImageSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: isCollected
          ? Image.network(
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
              width: pokemonImageSize,
              height: pokemonImageSize,
            )
          : Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
                  width: pokemonImageSize,
                  height: pokemonImageSize,
                  color: Colors.black45,
                ),
                const Icon(
                  Icons.question_mark_rounded,
                  size: 32.0,
                  color: Colors.black45,
                ),
              ],
            ),
    );
  }
}
