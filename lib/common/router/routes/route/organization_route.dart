
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../../views/organization/index/view.dart' as organization;
import '../../../layout/shell_view.dart';
import 'app_route.dart';

final organizationShellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');

class OrganizationRoute extends AppRoute {

  OrganizationRoute._privateConstructor();

  static final OrganizationRoute _instance = OrganizationRoute._privateConstructor();

  static OrganizationRoute get instance => _instance;

  static String get organizationPath => '/organization';

  @override
  List<RouteBase> routes = [

  ];

  @override
  StatefulShellBranch shellBranch = StatefulShellBranch(
    navigatorKey: organizationShellNavigatorKey,
    routes: [
      GoRoute(
        path: '/organization',
        pageBuilder: (context, state) => const NoTransitionPage(
          child: organization.View(),
        ),
      ),
    ],
  );

  @override
  ShellView get shellView => const organization.View();

}