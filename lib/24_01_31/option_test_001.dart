import 'package:flutter/material.dart';

class OptionTest001 extends StatefulWidget {
  const OptionTest001({super.key});

  @override
  State<OptionTest001> createState() => _OptionTest001State();
}

class _OptionTest001State extends State<OptionTest001> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.sort),
      ),
      body: Container(
        child: const Center(
          child: Text('qwerasdf'),
        ),
      ),
    );
  }
}
