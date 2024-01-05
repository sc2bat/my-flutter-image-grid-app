import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_image_grid_app/24_01_05/data/photo_api.dart';

void main() {
  test('test photoapi testing', () async {
    final api = PhotoApi();

    final result = await api.fetch('apple');

    // expect(result.first.id, 1122537);
    expect(result.length, 20);
  });
}
