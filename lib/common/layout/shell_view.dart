import 'package:flutter/material.dart';

abstract class ShellView {
  AppBar appBar(BuildContext context);

  BottomNavigationBarItem navItem(BuildContext context);
}