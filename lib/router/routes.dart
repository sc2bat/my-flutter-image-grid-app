// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:go_router/go_router.dart';

import 'package:my_flutter_image_grid_app/23_12_27/screen/my_home_page.dart';
<<<<<<< HEAD
import 'package:my_flutter_image_grid_app/24_01_02/ui/page/main_240102_page.dart';
import 'package:my_flutter_image_grid_app/24_01_02_provider/page/main_provider_page.dart';
import 'package:my_flutter_image_grid_app/24_01_05/data/photo_api.dart';
import 'package:my_flutter_image_grid_app/24_01_05/main_change_notifier_provider_page.dart';
// import 'package:my_flutter_image_grid_app/24_01_05/model/photo.dart';
import 'package:my_flutter_image_grid_app/24_01_05/ui/widget/photo_inherited_widget.dart';
import 'package:my_flutter_image_grid_app/24_01_05/viewmodel/home_viewmodlel.dart';
import 'package:my_flutter_image_grid_app/route_page.dart';
=======
import 'package:my_flutter_image_grid_app/23_12_28/screen/searching_screen.dart';
import 'package:my_flutter_image_grid_app/router/route_page.dart';
>>>>>>> origin/test-001

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const RoutePage();
      },
    ),
    GoRoute(
      path: '/231227',
      builder: (context, state) {
        return const MyHomePage(
          title: '231227 image grid',
        );
      },
    ),
    GoRoute(
      path: '/240102',
      builder: (context, state) {
<<<<<<< HEAD
        return const Main240102Page();
      },
    ),
    GoRoute(
      path: '/240102_provider',
      builder: (context, state) {
        return const MainProviderPage();
=======
        return const SearchingScreen();
>>>>>>> origin/test-001
      },
    ),
    GoRoute(
      path: '/240105_ChangeNotifierProvider',
      builder: (context, state) {
        return PhotoInheritedWidget(
            homeViewModel: HomeViewModel(api: PhotoApi()),
            child: const MainChangeNotifierProviderPage());
      },
    ),
  ],
);

class Routes {
  final List<RouteModel> routeList = [
    RouteModel(title: '231227', developTime: 'none'),
    RouteModel(title: '240102', developTime: '1h40m54s8'),
    RouteModel(title: '240102_provider', developTime: 'provider_testing'),
    RouteModel(title: '240105_ChangeNotifierProvider', developTime: 'none'),
    // RouteModel(title: '240104', developTime: 'none'),
    // RouteModel(title: '240105', developTime: 'none'),
    // RouteModel(title: '240106', developTime: 'none'),
    // RouteModel(title: '240107', developTime: 'none'),
    // RouteModel(title: '240108', developTime: 'none'),
    // RouteModel(title: '240109', developTime: 'none'),
    // RouteModel(title: '240110', developTime: 'none'),
    // RouteModel(title: '240111', developTime: 'none'),
    // RouteModel(title: '240112', developTime: 'none'),
    // RouteModel(title: '240113', developTime: 'none'),
    // RouteModel(title: '240114', developTime: 'none'),
    // RouteModel(title: '240115', developTime: 'none'),
    // RouteModel(title: '240116', developTime: 'none'),
    // RouteModel(title: '240117', developTime: 'none'),
    // RouteModel(title: '240118', developTime: 'none'),
    // RouteModel(title: '240119', developTime: 'none'),
    // RouteModel(title: '240120', developTime: 'none'),
    // RouteModel(title: '240121', developTime: 'none'),
    // RouteModel(title: '240122', developTime: 'none'),
    // RouteModel(title: '240123', developTime: 'none'),
    // RouteModel(title: '240124', developTime: 'none'),
    // RouteModel(title: '240125', developTime: 'none'),
    // RouteModel(title: '240126', developTime: 'none'),
  ];

  List<RouteModel> get getRouteList => routeList;
}

class RouteModel {
  String title;
  String developTime;
  RouteModel({
    required this.title,
    required this.developTime,
  });
}
