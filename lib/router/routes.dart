// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:go_router/go_router.dart';
import 'package:my_flutter_image_grid_app/23_12_27/screen/my_home_page.dart';
import 'package:my_flutter_image_grid_app/24_01_02/ui/page/main_240102_page.dart';
import 'package:my_flutter_image_grid_app/24_01_02_provider/page/main_provider_page.dart';
// import 'package:my_flutter_image_grid_app/24_01_05/data/photo_api.dart';
// import 'package:my_flutter_image_grid_app/24_01_05/main_change_notifier_provider_page.dart';

// import 'package:my_flutter_image_grid_app/24_01_05/model/photo.dart';
// import 'package:my_flutter_image_grid_app/24_01_05/ui/widget/photo_inherited_widget.dart';
// import 'package:my_flutter_image_grid_app/24_01_05/viewmodel/home_viewmodlel.dart';
import 'package:my_flutter_image_grid_app/24_01_06/recap_main_page.dart';
import 'package:my_flutter_image_grid_app/24_01_18/main_roulette_screen.dart';
import 'package:my_flutter_image_grid_app/24_01_22/main_grid_view_test.dart';
// import 'package:my_flutter_image_grid_app/24_01_20_firebase/main_firebase.dart';
import 'package:my_flutter_image_grid_app/24_01_22/main_grid_view_test_backup.dart';
import 'package:my_flutter_image_grid_app/24_01_25/main_animate_grid_test.dart';
import 'package:my_flutter_image_grid_app/24_01_25_ZoomPageTransitionsBuilder/main_zoom_page_transitions_builder_test.dart';
import 'package:my_flutter_image_grid_app/24_01_25_pinch_zoom/main_pinch_zoom_test.dart';
import 'package:my_flutter_image_grid_app/24_01_29_superteam/main_super_team.dart';
import 'package:my_flutter_image_grid_app/24_01_30_grid_scroller/main_grid_scroller.dart';
import 'package:my_flutter_image_grid_app/router/route_page.dart';

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
        return const Main240102Page();
      },
    ),
    GoRoute(
      path: '/240102_provider',
      builder: (context, state) {
        return const MainProviderPage();
      },
    ),
    // GoRoute(
    //   path: '/240105_ChangeNotifierProvider',
    //   builder: (context, state) {
    //     return PhotoInheritedWidget(
    //         homeViewModel: HomeViewModel(api: PhotoApi()),
    //         child: const MainChangeNotifierProviderPage());
    //   },
    // ),
    GoRoute(
      path: '/240118_MainRouletteScreen',
      builder: (context, state) {
        return const MainRouletteScreen();
      },
    ),
    GoRoute(
      path: '/240106_recap_provider',
      builder: (context, state) {
        return const RecapChangeNotifierProviderPage();
      },
    ),
    // GoRoute(
    //   path: '/24_01_20_firebase',
    //   builder: (context, state) {
    //     return const FirebaseTestingPage();
    //   },
    // ),
    GoRoute(
      path: '/24_01_22_gridviewtest_backup',
      builder: (context, state) {
        return const MyGridViewTestBackUp();
      },
    ),
    GoRoute(
      path: '/24_01_22_gridviewtest',
      builder: (context, state) {
        return const MyGridViewTest();
      },
    ),
    GoRoute(
      path: '/24_01_25_gridviewtest',
      builder: (context, state) {
        return const ZoomableGridView();
      },
    ),
    GoRoute(
      path: '/24_01_25_pinchzoomtest',
      builder: (context, state) {
        return const MainPinchZoomTest();
      },
    ),
    GoRoute(
      path: '/24_01_25_ZoomPageTransitionsBuilder',
      builder: (context, state) {
        return const MainZoomPageTransitionsBuilderTest();
      },
    ),
    GoRoute(
      path: '/24_01_29_superteam',
      builder: (context, state) {
        return const MainSuperTeam();
      },
    ),
    GoRoute(
      path: '/24_01_30_gridscroller',
      builder: (context, state) {
        return const MainGridScroller();
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
    RouteModel(title: '240118_MainRouletteScreen', developTime: 'none'),
    RouteModel(title: '24_01_22_gridviewtest_backup', developTime: 'none'),
    // RouteModel(title: '24_01_22_gridviewtest', developTime: 'none'),
    RouteModel(title: '24_01_25_gridviewtest', developTime: 'none'),
    RouteModel(title: '24_01_29_superteam', developTime: 'none'),
    RouteModel(title: '24_01_30_gridscroller', developTime: 'none'),
    // RouteModel(title: '24_01_25_pinchzoomtest', developTime: 'none'),
    // RouteModel(
    //     title: '24_01_25_ZoomPageTransitionsBuilder', developTime: 'none'),
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
