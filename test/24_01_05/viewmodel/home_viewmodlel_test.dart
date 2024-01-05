import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_image_grid_app/24_01_05/data/photo_api.dart';
import 'package:my_flutter_image_grid_app/24_01_05/model/photo.dart';
import 'package:my_flutter_image_grid_app/24_01_05/viewmodel/home_viewmodlel.dart';

void main() {
  test('stream testing', () async {
    final viewModel = HomeViewModel(api: PhotoApi());

    await viewModel.fetch('banana');
    await viewModel.fetch('banana');
    expect(
      viewModel.photoStream,
      emitsInOrder(
        [
          isA<List<Hit>>(),
          isA<List<Hit>>(),
        ],
      ),
    );
  });
}
