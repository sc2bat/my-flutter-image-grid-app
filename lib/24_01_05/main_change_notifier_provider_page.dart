import 'package:flutter/material.dart';

class MainChangeNotifierProviderPage extends StatelessWidget {
  const MainChangeNotifierProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChangeNotifierProviderPage'),
      ),
      body: const Center(child: Text('Sample')),
    );
  }
}
