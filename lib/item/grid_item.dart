import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final int index;

  GridItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal, // 그리드 아이템의 배경색
      child: Center(
        child: Text(
          'Item $index',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
