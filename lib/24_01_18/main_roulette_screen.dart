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
      duration: const Duration(seconds: 3),
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
    }
  }

  void _stopSpinning() {
    if (_isSpinning) {
      _controller.stop();
      _isSpinning = false;
      _showResultPopup();
    }
  }

  void _showResultPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('result'),
          content: const Text('pikachu~~'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('확인'),
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
        title: const Text('뽑기'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotationTransition(
              turns: _animation,
              child: Image.asset(
                'assets/images/pokeball.png',
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _startSpinning,
              child: const Text('시작'),
            ),
            ElevatedButton(
              onPressed: _stopSpinning,
              child: const Text('종료'),
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
