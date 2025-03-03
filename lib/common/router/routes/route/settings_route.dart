
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../layout/shell_view.dart';
import '../../../../presentation/settings/index/view.dart' as settings;
import 'app_route.dart';

final settingShellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'setting');

class SettingsRoute extends AppRoute {
  SettingsRoute._privateConstructor();

  static final SettingsRoute _instance = SettingsRoute._privateConstructor();

  static SettingsRoute get instance => _instance;

  static String get settingPath => '/settings';

  @override
  List<RouteBase> routes = [];

  @override
  StatefulShellBranch shellBranch = StatefulShellBranch(
    navigatorKey: settingShellNavigatorKey,
    routes: [
      GoRoute(
        path: settingPath,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: settings.View(),
        ),
      ),
    ],
  );

  @override
  ShellView get shellView => const settings.View();
}