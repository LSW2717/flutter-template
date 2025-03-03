import
'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../common/layout/shell_view.dart';

class View extends StatelessWidget implements ShellView {
  const View({super.key});


  @override
  AppBar appBar(BuildContext context) {
    final text = AppLocalizations.of(context);
    return AppBar(
      title: Row(
        children: [
          Text(text?.organization ?? ""),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  BottomNavigationBarItem navItem(BuildContext context) {
    final text = AppLocalizations.of(context);
    return BottomNavigationBarItem(
      icon: const Icon(Icons.apartment),
      label: text?.organization,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(AppLocalizations.of(context)?.organization ?? ""),
    );
  }
}
