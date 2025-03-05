
import 'package:go_router/go_router.dart';
import '../../layout/shell_view.dart';
import '../../layout/shell_layout.dart';
import 'route/friends_route.dart';
import 'route/home_route.dart';
import 'route/rooms_route.dart';
import 'route/settings_route.dart';

class AppRoutes {
  static final appRoutes = [
    ...HomeRoute.instance.routes,
    ...FriendsRoute.instance.routes,
    ...RoomsRoute.instance.routes,
    ...SettingsRoute.instance.routes,
    shellRoute,
  ];

  static final shellRoute = StatefulShellRoute.indexedStack(
    builder: (context, state, navigationShell) {
      final List<ShellView> shellViews = [
        HomeRoute.instance.shellView,
        FriendsRoute.instance.shellView,
        RoomsRoute.instance.shellView,
        SettingsRoute.instance.shellView,
      ];

      return ShellLayout(
        navigationShell: navigationShell,
        shellViews: shellViews,
      );
    },
    branches: [
      HomeRoute.instance.shellBranch,
      FriendsRoute.instance.shellBranch,
      RoomsRoute.instance.shellBranch,
      SettingsRoute.instance.shellBranch,
    ],
  );
}
