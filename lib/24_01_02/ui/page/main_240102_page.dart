// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/24_01_02/data/pixabay_api.dart';
import 'package:my_flutter_image_grid_app/24_01_02/mapper/pixabay_to_image_item.dart';
import 'package:my_flutter_image_grid_app/24_01_02/model/image_item.dart';
import 'package:my_flutter_image_grid_app/24_01_02/model/pixabay.dart';
import 'package:my_flutter_image_grid_app/constant/constant.dart';
import 'package:my_flutter_image_grid_app/logger/simple_logger.dart';

class Main240102Page extends StatefulWidget {
  const Main240102Page({
    super.key,
  });

  @override
  State<Main240102Page> createState() => _Main240102PageState();
}

class _Main240102PageState extends State<Main240102Page> {
  final _searchingTextController = TextEditingController();
  List<ImageItem> ImageItemList = [];
  bool _isLoading = true;

  void getSearching(String searchText) async {
    _isLoading = true;
    ImageItemList = [];
    final query = {
      "key": PIXABAY_API_KEY,
      "q": searchText,
      "image_type": "photo",
      "pretty": "true",
    };
    logger.info('qwerasdf ${query['q']}');
    Pixabay data = await PixabayApi().getImageResult(query);
    ImageItemList = PixabayToImageItem().convertToImageItem(data);
    logger.info('qwerasdf ${ImageItemList.length}');
    _isLoading = false;
    logger.info('qwerasdf $_isLoading');
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getSearching('');
  }

  @override
  void dispose() {
    _searchingTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '240102_image_search',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SearchBar(
              controller: _searchingTextController,
              hintText: 'Search',
              onChanged: (value) => getSearching(_searchingTextController.text),
            ),
            _isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemCount: ImageItemList.length,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.network(
                            ImageItemList[index].imageUrl,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
