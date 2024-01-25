import 'package:flutter/material.dart';

import 'widget/gird_third_row_widget.dart';

class ZoomableGridView extends StatefulWidget {
  const ZoomableGridView({super.key});

  @override
  _ZoomableGridViewState createState() => _ZoomableGridViewState();
}

class _ZoomableGridViewState extends State<ZoomableGridView> {
  @override
  Widget build(BuildContext context) {
    bool isCollected = true;
    print('bool Collected => $isCollected');

    String typeImageUrl =
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png';
    double typeimageSize = 24.0;
    double iconSize = 20.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'zoom test gridview',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: GridView.builder(
            physics: null,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
            ),
            itemCount: 40,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black.withOpacity(0.3),
                ),
                child: GirdThirdRowWidget(
                    isCollected: isCollected,
                    typeImageUrl: typeImageUrl,
                    typeimageSize: typeimageSize,
                    iconSize: iconSize),
              );
            },
          ),
        ),
      ),
    );
  }
}

class ZoomController extends ChangeNotifier {}
