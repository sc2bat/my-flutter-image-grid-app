import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/24_01_05/data/photo_api.dart';

class PhotoInheritedWidget extends InheritedWidget {
  final PhotoApi api;

  const PhotoInheritedWidget({
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

  @override
  bool updateShouldNotify(covariant PhotoInheritedWidget oldWidget) {
    return oldWidget.api != api;

    throw UnimplementedError();
  }
}
