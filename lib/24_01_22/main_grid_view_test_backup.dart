import 'package:flutter/material.dart';

class MyGridViewTestBackUp extends StatefulWidget {
  const MyGridViewTestBackUp({super.key});

  @override
  _MyGridViewTestBackUpState createState() => _MyGridViewTestBackUpState();
}

class _MyGridViewTestBackUpState extends State<MyGridViewTestBackUp> {
  List<String> gridItems = List.generate(9, (index) => 'Item ${index + 1}');
  List<String> listItems = [];

  double currentScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multi-Touch Grid and List View'),
      ),
      body: GestureDetector(
        onScaleUpdate: (details) {
          setState(() {
            currentScale = details.scale;
          });
        },
        onScaleEnd: (details) {
          if (currentScale > 1.0) {
            // If the user scales up (zoom gesture), switch to GridView
            setState(() {
              gridItems.addAll(listItems);
              listItems.clear();
            });
          } else if (currentScale < 1.0) {
            // If the user scales down (pinch gesture), switch to ListView
            setState(() {
              listItems.addAll(gridItems);
              gridItems.clear();
            });
          }

          currentScale = 1.0; // Reset the scale for the next interaction
        },
        child: gridItems.isNotEmpty
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: gridItems.length,
                itemBuilder: (context, index) {
                  return GridTile(
                    child: Container(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          gridItems[index],
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              )
            : ListView.builder(
                itemCount: listItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(listItems[index]),
                  );
                },
              ),
      ),
    );
  }
}
