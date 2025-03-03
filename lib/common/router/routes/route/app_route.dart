import 'package:go_router/go_router.dart';

import '../../../view_layout/shell_view.dart';

abstract class AppRoute {
  StatefulShellBranch get shellBranch;

  ShellView get shellView;

  List<RouteBase> get routes;
}