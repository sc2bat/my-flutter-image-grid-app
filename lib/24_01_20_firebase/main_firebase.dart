import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/firebase_options.dart';

class FirebaseTestingPage extends StatefulWidget {
  const FirebaseTestingPage({super.key});

  @override
  State<FirebaseTestingPage> createState() => _FirebaseTestingPageState();
}

class _FirebaseTestingPageState extends State<FirebaseTestingPage> {
  Future<void> firebaseinit() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  @override
  void initState() {
    super.initState();
    firebaseinit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase email testing'),
      ),
      body: const Column(
        children: [
          Text('qwerasdf'),
        ],
      ),
    );
  }
}
