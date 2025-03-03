import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'routes/app_routes.dart';
import 'routes/route/home_route.dart';

part 'router.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) {
  return GoRouter(
    initialLocation: HomeRoute.homePath,
    navigatorKey: rootNavigatorKey,
    restorationScopeId: 'router',
    routes: AppRoutes.appRoutes,
    redirect: (BuildContext context, GoRouterState state) {
      return null;
    },
  );
}

Page<dynamic> platformPage({
  required Widget child,
  bool? fullScreenDialog,
}) {
  return Platform.isIOS
      ? CupertinoPage<void>(
    child: child,
    fullscreenDialog: fullScreenDialog ?? false,
  )
      : MaterialPage<void>(
    child: child,
    fullscreenDialog: fullScreenDialog ?? false,
  );
}

Page<dynamic> noTransitionPage({
  required Widget child,
}) {
  return CustomTransitionPage<void>(
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
