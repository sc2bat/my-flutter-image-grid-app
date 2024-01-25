import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/24_01_25/widget/gird_second_row_widget.dart';

import 'widget/gird_third_row_widget.dart';

class ZoomableGridView extends StatefulWidget {
  const ZoomableGridView({super.key});

  @override
  _ZoomableGridViewState createState() => _ZoomableGridViewState();
}

class _ZoomableGridViewState extends State<ZoomableGridView> {
  @override
  Widget build(BuildContext context) {
    bool isCollected = false;
    print('bool Collected => $isCollected');

    int crossAxisCount = 2;

    String typeImageUrl =
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png';

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
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
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
                child: crossAxisCount == 2
                    ? GridSecondRowWidget(
                        isCollected: isCollected,
                        typeImageUrl: typeImageUrl,
                      )
                    : crossAxisCount == 3
                        ? GirdThirdRowWidget(
                            isCollected: isCollected,
                            typeImageUrl: typeImageUrl,
                          )
                        : null,
                // crossAxisCount == 4 ?
                // GirdFourthRowWidget(
                //   isCollected: isCollected,
                //   typeImageUrl: typeImageUrl,
                // ) :
                // GirdFifthRowWidget(
                //   isCollected: isCollected,
                //   typeImageUrl: typeImageUrl,
                // ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class ZoomController extends ChangeNotifier {}
