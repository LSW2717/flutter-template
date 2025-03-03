
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../layout/shell_view.dart';
import '../../../../views/rooms/index/view.dart' as rooms;
import 'app_route.dart';

final roomsShellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'rooms');

class RoomsRoute extends AppRoute {

  RoomsRoute._privateConstructor();

  static final RoomsRoute _instance = RoomsRoute._privateConstructor();

  static RoomsRoute get instance => _instance;

  static String get roomsPath => '/roomsPath';

  @override
  List<RouteBase> routes = [

  ];

  @override
  StatefulShellBranch shellBranch = StatefulShellBranch(
    navigatorKey: roomsShellNavigatorKey,
    routes: [
      GoRoute(
        path: roomsPath,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: rooms.View(),
        ),
      ),
    ],
  );

  @override
  ShellView get shellView => const rooms.View();
}