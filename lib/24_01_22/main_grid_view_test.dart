import 'package:flutter/material.dart';

class MyGridViewTest extends StatefulWidget {
  const MyGridViewTest({Key? key}) : super(key: key);

  @override
  _MyGridViewTestState createState() => _MyGridViewTestState();
}

class _MyGridViewTestState extends State<MyGridViewTest> {
  int crossAxisCount = 2; // Initial cross-axis count for GridView
  double scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pinch Zoom Grid View'),
      ),
      body: GestureDetector(
        onScaleUpdate: (details) {
          setState(() {
            scale = details.scale;
          });
        },
        onScaleEnd: (details) {
          // Adjust cross-axis count based on pinch scale
          if (scale > 1.0 && crossAxisCount > 2) {
            crossAxisCount -= 1;
          } else if (scale < 1.0 && crossAxisCount < 5) {
            crossAxisCount += 1;
          }
          scale = 1.0; // Reset scale for the next interaction
        },
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
          ),
          itemCount: 20, // Adjust as needed
          itemBuilder: (context, index) {
            return GridTile(
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Item ${index + 1}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
