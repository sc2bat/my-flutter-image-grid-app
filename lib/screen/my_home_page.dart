import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/logger/simple_logger.dart';
import 'package:my_flutter_image_grid_app/model/image_model.dart';
import 'package:my_flutter_image_grid_app/repository/image_repository.dart';

import '../item/grid_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _textController = TextEditingController();

  List<ImageModel> searchImage = [];

  List<ImageModel> searchingImage(String searchingText) {
    // List<ImageModel> searchImages = images.where((element) => element.title.contains('c')).toList();
    return ImageRepository()
        .getImages()
        .where((element) => element.title.contains(searchingText))
        .toList();
  }

  void updateSearchImage(String searchText) {
    searchImage = searchingImage(searchText);
  }

  @override
  void initState() {
    super.initState();
    updateSearchImage('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurple), // 동적 border 색상
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      logger.info('qwerasdf tap icon');
                    },
                    child: const Icon(Icons.search),
                  ),
                ),
                onChanged: (value) {
                  updateSearchImage(_textController.text);
                  setState(() {});
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 열의 수
                  crossAxisSpacing: 8.0, // 열 간의 간격
                  mainAxisSpacing: 8.0, // 행 간의 간격
                ),
                itemCount: searchImage.length, // 아이템 개수
                itemBuilder: (BuildContext context, int index) {
                  return GridItem(image: searchImage[index]); // 그리드 아이템 생성
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
