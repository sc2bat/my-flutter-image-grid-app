import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class MainRouletteScreen extends StatefulWidget {
  const MainRouletteScreen({super.key});

  @override
  _MainRouletteScreenState createState() => _MainRouletteScreenState();
}

class _MainRouletteScreenState extends State<MainRouletteScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isSpinning = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this, // this가 TickerProvider를 구현하도록 함
      duration: Duration(seconds: 3),
    )..addListener(() {
        setState(() {});
      });

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutCubic,
    );
  }

  void _startSpinning() {
    if (!_isSpinning) {
      _controller.reset();
      _controller.forward();
      _isSpinning = true;

      // 룰렛이 도는 동안의 로직을 추가할 수 있습니다.
    }
  }

  void _stopSpinning() {
    if (_isSpinning) {
      _controller.stop();
      _isSpinning = false;

      // 뽑기가 종료된 후의 로직을 추가할 수 있습니다.
      _showResultPopup();
    }
  }

  void _showResultPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('랜덤 뽑기 결과'),
          content: Text('여기에 뽑기 결과를 표시합니다.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('확인'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('랜덤 뽑기'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotationTransition(
              turns: _animation,
              child: Image.asset(
                'assets/roulette.png', // 룰렛 이미지 파일 경로로 변경
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _startSpinning,
              child: Text('랜덤 뽑기 시작'),
            ),
            ElevatedButton(
              onPressed: _stopSpinning,
              child: Text('랜덤 뽑기 종료'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
