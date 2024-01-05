import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/24_01_05/data/photo_api.dart';
import 'package:my_flutter_image_grid_app/24_01_05/model/photo.dart';
import 'package:my_flutter_image_grid_app/24_01_05/ui/widget/image_grid_view_widget.dart';
import 'package:my_flutter_image_grid_app/24_01_05/ui/widget/photo_inherited_widget.dart';
import 'package:my_flutter_image_grid_app/logger/simple_logger.dart';

class MainChangeNotifierProviderPage extends StatefulWidget {
  const MainChangeNotifierProviderPage({super.key});

  @override
  State<MainChangeNotifierProviderPage> createState() =>
      _MainChangeNotifierProviderPageState();
}

class _MainChangeNotifierProviderPageState
    extends State<MainChangeNotifierProviderPage> {
  // photo 를 담을 list
  // List<Hit> photos = [];
  // 검색창 문자열 컨트롤러
  final _searchTextController = TextEditingController();

  final bool _isLoading = true;

  // void presseSearchButton(PhotoInheritedWidget photoInheritedWidget) async {
  //   _isLoading = true;
  //   photos = await photoInheritedWidget.api.fetch(_searchTextController.text);
  //   _isLoading = false;
  //   setState(() {});
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final photoInheritedWidget = PhotoInheritedWidget.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ChangeNotifierProviderPage',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black54,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchBar(
              controller: _searchTextController,
              padding: const MaterialStatePropertyAll<EdgeInsets>(
                EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
              ),
              hintText: 'apple',
              hintStyle: MaterialStateProperty.resolveWith<TextStyle>(
                (Set<MaterialState> states) {
                  return TextStyle(
                    color: states.contains(MaterialState.focused)
                        ? Colors.blue
                        : Colors.grey,
                    fontStyle: FontStyle.italic,
                  );
                },
              ),
              trailing: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      logger.info('qwerasdf press search button ');
                      // presseSearchButton(photoInheritedWidget);
                      photoInheritedWidget
                          .presseSearchButton(_searchTextController.text);
                    },
                    child: const Icon(
                      Icons.search,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            StreamBuilder<List<Hit>>(
              stream: photoInheritedWidget.photoStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final photos = snapshot.data!;
                  return Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: photos.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                      ),
                      itemBuilder: (context, index) {
                        return PhotoWidget(hit: photos[index]);
                      },
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
