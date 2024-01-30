import 'package:flutter/material.dart';

class MainGridScroller extends StatefulWidget {
  const MainGridScroller({super.key});

  @override
  _MainGridScrollerState createState() => _MainGridScrollerState();
}

class _MainGridScrollerState extends State<MainGridScroller> {
  final ScrollController _controller = ScrollController();

  double getItemHeight(int index) {
    return 100.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Scroll Example'),
      ),
      body: GridView.builder(
        controller: _controller,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Center(
              child: Text('Item $index'),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scrollToIndex(6);
        },
        child: const Icon(Icons.arrow_downward),
      ),
    );
  }

  // 특정 인덱스로 스크롤하는 함수
  void _scrollToIndex(int index) {
    double totalHeight = 0.0;
    for (int i = 0; i < index; i++) {
      totalHeight += getItemHeight(i);
    }

    _controller.animateTo(
      totalHeight,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
