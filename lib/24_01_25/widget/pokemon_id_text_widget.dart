import 'package:flutter/material.dart';

class PokemonIdTextWidget extends StatelessWidget {
  const PokemonIdTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(1.0),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: const Text(
        '0001',
        style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
