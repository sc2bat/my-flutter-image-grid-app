import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/23_12_28/model/album_model.dart';
import 'package:my_flutter_image_grid_app/23_12_28/service/album_api_service.dart';
import 'package:my_flutter_image_grid_app/23_12_28/widget/searching_screen.dart';
import 'package:my_flutter_image_grid_app/logger/simple_logger.dart';

class SearchingScreen extends StatefulWidget {
  const SearchingScreen({super.key});

  @override
  State<SearchingScreen> createState() => _SearchingScreenState();
}

class _SearchingScreenState extends State<SearchingScreen> {
  @override
  Widget build(BuildContext context) {
    final textContoller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Searching App 231228'),
      ),
      body: Column(
        children: [
          MyTextFieldWidget(textContoller: textContoller),
          FutureBuilder<List<AlbumModel>>(
            future: AlbumApiService().getAlbumApi(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }

              logger.info(snapshot.hasData);

              if (!snapshot.hasData) {
                return const Center(
                  child: Text('data is none'),
                );
              }
              final albumInstance = snapshot.data!;
              logger.info(
                  'qwerasdf albumInstance.length ${albumInstance.length}');
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: albumInstance.length,
                itemBuilder: ((context, index) => Container(
                      color: Colors.teal.withOpacity(0.4), // 그리드 아이템의 배경색
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            albumInstance[index].thumbnailUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )),
              );
            },
          ),
        ],
      ),
    );
  }
}
