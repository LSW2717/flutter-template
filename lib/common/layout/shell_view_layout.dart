import 'package:flutter/material.dart';
import 'package:flutter_template/common/layout/shell_view.dart';
import 'package:go_router/go_router.dart';

class ShellViewLayout extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  final List<ShellView> shellViews;

  const ShellViewLayout({
    required this.navigationShell,
    required this.shellViews,
    super.key,
  });

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: shellViews[navigationShell.currentIndex].appBar(context),
      backgroundColor: Colors.white,
      body: navigationShell,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          currentIndex: navigationShell.currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          onTap: _goBranch,
          items: [
            ...shellViews.map(
                  (view) => view.navItem(context),
            ),
          ],
        ),
      ),
    );
  }
}
