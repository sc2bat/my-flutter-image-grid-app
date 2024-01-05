// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/24_01_05/viewmodel/home_viewmodlel.dart';
// import 'package:my_flutter_image_grid_app/24_01_05/data/photo_api.dart';
// import 'package:my_flutter_image_grid_app/24_01_05/model/photo.dart';

class PhotoInheritedWidget extends InheritedWidget {
  // final PhotoApi api;

  // final _photoStreamController = StreamController<List<Hit>>()..add([]);
  // Stream<List<Hit>> get photoStream => _photoStreamController.stream;

  final HomeViewModel homeViewModel;

  const PhotoInheritedWidget({
    super.key,
    required super.child,
    // required this.api,
    required this.homeViewModel,
  });

  static PhotoInheritedWidget of(BuildContext context) {
    final PhotoInheritedWidget? result =
        context.dependOnInheritedWidgetOfExactType<PhotoInheritedWidget>();

    assert(result != null, 'none photo api found in context');
    return result!;
  }

  // Future<void> fetch(String query) async {
  //   final result = await api.fetch(query);
  //   _photoStreamController.add(result);
  // }

  @override
  bool updateShouldNotify(covariant PhotoInheritedWidget oldWidget) {
    return true;

    throw UnimplementedError();
  }
}
