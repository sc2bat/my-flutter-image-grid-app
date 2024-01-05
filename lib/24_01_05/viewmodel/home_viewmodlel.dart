import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/24_01_05/data/photo_api.dart';
import 'package:my_flutter_image_grid_app/24_01_05/model/photo.dart';

class HomeViewModel {
  final PhotoApi api;

  HomeViewModel({
    required this.api,
  });

  final _photoStreamController = StreamController<List<Hit>>()..add([]);
  Stream<List<Hit>> get photoStream => _photoStreamController.stream;

  Future<void> fetch(String query) async {
    final result = await api.fetch(query);
    _photoStreamController.add(result);
  }
}
