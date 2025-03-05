import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ShellView {
  AppBar appBar(BuildContext context);

  BottomNavigationBarItem navItem(BuildContext context);

  Future<void> onTap(WidgetRef ref);
}