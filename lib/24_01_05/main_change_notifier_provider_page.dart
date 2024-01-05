import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/24_01_05/data/photo_api.dart';
import 'package:my_flutter_image_grid_app/24_01_05/model/photo.dart';
import 'package:my_flutter_image_grid_app/24_01_05/ui/widget/image_grid_view_widget.dart';
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
  List<Hit> photos = [];
  // 검색창 문자열 컨트롤러
  final _searchTextController = TextEditingController();

  bool _isLoading = true;

  void presseSearchButton() async {
    _isLoading = true;
    photos = await PhotoApi().fetch(_searchTextController.text);
    _isLoading = false;
    setState(() {});
  }

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
                      presseSearchButton();
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
            _isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 20,
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
                  ),
          ],
        ),
      ),
    );
  }
}
