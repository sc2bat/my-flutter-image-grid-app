import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_image_grid_app/logger/simple_logger.dart';
import 'package:my_flutter_image_grid_app/router/routes.dart';

class RoutePage extends StatelessWidget {
  const RoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<RouteModel> routeList = Routes().getRouteList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('img Searching griding'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: routeList.length, // 목록 아이템 수
              itemBuilder: (context, index) {
                // 각 아이템을 생성하는 함수
                logger.info('qwerasdf ${routeList[index].title}');
                return ListTile(
                  title:
                      Text('${index + 1} 번째 date => ${routeList[index].title}'),
                  subtitle: Text('time => ${routeList[index].developTime}'),
                  leading: const Icon(Icons.star), // 좌측에 아이콘 표시
                  onTap: () {
                    context.push('/${routeList[index].title}');
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
