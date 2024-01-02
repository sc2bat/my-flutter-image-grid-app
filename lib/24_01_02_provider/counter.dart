import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/logger/simple_logger.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    logger.info('qwerasdf counter noti ${_count}');
    _count++;
    notifyListeners();
  }
}
