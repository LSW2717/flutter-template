import
'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../common/layout/shell_view.dart';

class View extends StatelessWidget implements ShellView {
  const View({
    super.key,
  });

  @override
  AppBar appBar(BuildContext context) {
    final text = AppLocalizations.of(context);
    return AppBar(
      title: Row(
        children: [
          Text(text?.friends ?? ""),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  BottomNavigationBarItem navItem(BuildContext context) {
    final text = AppLocalizations.of(context);
    return BottomNavigationBarItem(
      icon: const Icon(Icons.person),
      label: text?.friends,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(AppLocalizations.of(context)?.friends ?? ""),
          ElevatedButton(
            onPressed: () {
              context.push('/friend');
            },
            child: Text('친구페이지로'),
          ),
        ],
      ),
    );
  }
}
