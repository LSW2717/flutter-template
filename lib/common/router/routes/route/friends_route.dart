import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../layout/shell_view.dart';
import '../../../../presentation/friends/friend/index/view.dart' as friend;
import '../../../../presentation/friends/index/view.dart' as friends;
import '../../router.dart';
import 'app_route.dart';

final friendsShellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'friends');

class FriendsRoute extends AppRoute {
  FriendsRoute._privateConstructor();

  static final FriendsRoute _instance = FriendsRoute._privateConstructor();

  static FriendsRoute get instance => _instance;

  static String get friendsPath => '/friends';

  static String get friendPath => '/friend';


  @override
  List<RouteBase> routes = [


  ];

  @override
  StatefulShellBranch shellBranch = StatefulShellBranch(
    navigatorKey: friendsShellNavigatorKey,
    routes: [
      GoRoute(
        path: friendsPath,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: friends.View(),
        ),
      ),
      GoRoute(
        path: friendPath,
        pageBuilder: (context, state) => platformPage(
          child: const friend.View(),
        ),
      ),
    ],
  );

  @override
  ShellView get shellView => const friends.View();
}
