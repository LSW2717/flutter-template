import
'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import '../../../common/locale/locale.dart';
import '../../../common/view_layout/shell_view.dart';

class View extends ConsumerWidget implements ShellView {
  const View({super.key});

  @override
  AppBar appBar(BuildContext context) {
    final text = AppLocalizations.of(context);
    return AppBar(
      title: Row(
        children: [
          Text(text?.settings ?? ""),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  BottomNavigationBarItem navItem(BuildContext context) {
    final text = AppLocalizations.of(context);
    return BottomNavigationBarItem(
      icon: const Icon(Icons.settings),
      label: text?.settings,
    );
  }

  @override
  Future<void> onTap(WidgetRef ref) async {
    // TODO: implement onTap
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              ref.read(appLocaleProvider.notifier).setLocale(EnumLocale.ko);
            },
            child: Text('한국어 변환'),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(appLocaleProvider.notifier).setLocale(EnumLocale.en);
            },
            child: Text('영어 변환'),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/home');
            },
            child: Text('홈으로'),
          ),
        ],
      ),
    );
  }
}
