import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/24_01_25/widget/gird_fourth_row_widget.dart';
import 'package:my_flutter_image_grid_app/24_01_25/widget/gird_second_row_widget.dart';
import 'package:my_flutter_image_grid_app/24_01_25/widget/grid_fifth_row_widget.dart';

import 'widget/gird_third_row_widget.dart';

class ZoomableGridView extends StatefulWidget {
  const ZoomableGridView({super.key});

  @override
  _ZoomableGridViewState createState() => _ZoomableGridViewState();
}

class _ZoomableGridViewState extends State<ZoomableGridView> {
  double zoomLevel = 1.0;
  int crossAxisCount = 3;
  bool canScroll = true;

  @override
  void initState() {
    zoomLevel = 1.0;
    crossAxisCount = 2;
    canScroll = true;
    super.initState();
  }

  void onScaleUpdate(ScaleUpdateDetails details) {
    print('onScaleUpdate');
    setState(() {
      zoomLevel = details.scale.clamp(0.5, 2.0);
      updateGridColumns();
      updateScrollAbility(details);
    });
  }

  void updateGridColumns() {
    const double maxZoom = 2.0;
    const double minZoom = 0.5;
    const int maxColumns = 5;
    const int minColumns = 2;

    double normalizedZoom = (zoomLevel - minZoom) / (maxZoom - minZoom);
    crossAxisCount =
        (minColumns + (normalizedZoom * (maxColumns - minColumns))).round();

    crossAxisCount = crossAxisCount.clamp(minColumns, maxColumns);
  }

  void updateScrollAbility(ScaleUpdateDetails details) {
    canScroll = details.scale == 1.0;
  }

  @override
  Widget build(BuildContext context) {
    crossAxisCount = 2;

    bool isCollected = true;

    // int crossAxisCount = 5;

    String colorTest = 'green';

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
        child: GestureDetector(
          onScaleUpdate: onScaleUpdate,
          child: Center(
            child: IgnorePointer(
              ignoring: !canScroll,
              child: AnimatedBuilder(
                animation: ZoomController(),
                builder: (context, child) {
                  return GridView.builder(
                    physics: canScroll
                        ? const AlwaysScrollableScrollPhysics()
                        : const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0,
                    ),
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          print('tap to detailPage');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: isCollected
                                ? getColorFromString(colorTest)
                                : Colors.black.withOpacity(0.3),
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
                                  : crossAxisCount == 4
                                      ? GridFourthRowWidget(
                                          isCollected: isCollected,
                                        )
                                      : GridFifthRowWidget(
                                          isCollected: isCollected,
                                        ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Color getColorFromString(String colorString) {
  switch (colorString) {
    case 'green':
      return Colors.green.withOpacity(0.3);
    case 'black':
      return Colors.black.withOpacity(0.3);
    // 추가적인 색상에 대한 처리를 원한다면 여기에 계속해서 추가 가능
    default:
      return Colors.transparent; // 기본값 설정
  }
}

class ZoomController extends ChangeNotifier {
  double _value = 1.0;

  double get value => _value;

  set value(double newValue) {
    _value = newValue;
    notifyListeners();
  }
}
