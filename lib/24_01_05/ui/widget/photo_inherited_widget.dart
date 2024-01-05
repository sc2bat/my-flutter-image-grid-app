import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/24_01_05/data/photo_api.dart';
import 'package:my_flutter_image_grid_app/24_01_05/model/photo.dart';

class PhotoInheritedWidget extends InheritedWidget {
  final PhotoApi api;

  final _photoStreamController = StreamController<List<Hit>>()..add([]);
  Stream<List<Hit>> get photoStream => _photoStreamController.stream;

  PhotoInheritedWidget({
    super.key,
    required super.child,
    required this.api,
  });

  static PhotoInheritedWidget of(BuildContext context) {
    final PhotoInheritedWidget? result =
        context.dependOnInheritedWidgetOfExactType<PhotoInheritedWidget>();

    assert(result != null, 'none photo api found in context');
    return result!;
  }

  Future<void> presseSearchButton(String query) async {
    final result = await api.fetch(query);
    _photoStreamController.add(result);
  }

  @override
  bool updateShouldNotify(covariant PhotoInheritedWidget oldWidget) {
    return oldWidget.api != api;

    throw UnimplementedError();
  }
}
