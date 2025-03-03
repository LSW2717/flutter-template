
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../layout/shell_view.dart';
import '../../../../views/home/index/view.dart' as home;
import 'app_route.dart';

final homeShellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');

class HomeRoute extends AppRoute {

  HomeRoute._privateConstructor();

  static final HomeRoute _instance = HomeRoute._privateConstructor();

  static HomeRoute get instance => _instance;

  static String get homePath => '/home';

  @override
  List<RouteBase> routes = [];

  @override
  StatefulShellBranch shellBranch = StatefulShellBranch(
    navigatorKey: homeShellNavigatorKey,
    routes: [
      GoRoute(
        path: homePath,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: home.View(),
        ),
      ),
    ],
  );

  @override
  ShellView get shellView => const home.View();
}