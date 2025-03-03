
import 'package:go_router/go_router.dart';
import '../../../view_layout/shell_view.dart';
import 'app_route.dart';

class IndexRoute extends AppRoute {
  IndexRoute._privateConstructor();

  static final IndexRoute _instance = IndexRoute._privateConstructor();

  static IndexRoute get instance => _instance;

  @override
  List<RouteBase> routes = [];

  @override
  StatefulShellBranch get shellBranch => throw UnimplementedError();

  @override
  ShellView get shellView => throw UnimplementedError();
}