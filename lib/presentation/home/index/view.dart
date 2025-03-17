import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_json/pretty_json.dart';

import '../../../common/layout/shell_view.dart';
import '../../../common/model/collection_model.dart';

class View extends ConsumerStatefulWidget implements ShellView {
  const View({
    super.key,
  });

  @override
  ConsumerState<View> createState() => _ViewState();

  @override
  AppBar appBar(BuildContext context) {
    final text = AppLocalizations.of(context);
    return AppBar(
      title: Row(
        children: [
          Text(text?.home ?? ""),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  BottomNavigationBarItem navItem(BuildContext context) {
    final text = AppLocalizations.of(context);
    return BottomNavigationBarItem(
      icon: const Icon(Icons.home),
      label: text?.home,
    );
  }

  @override
  Future<void> onTap(WidgetRef ref) async {
    // TODO: implement onTap
  }
}

class _ViewState extends ConsumerState<View> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    final text = AppLocalizations.of(context);
    return Center(
      child: Column(
        children: [
          if (isShow) CircularProgressIndicator(),
          ElevatedButton(
              onPressed: () {
                CollectionModel<FriendsModel> friends = CollectionModel<FriendsModel>(
                  embedded: FriendsModel(
                    friends: [
                      FriendModel(
                        id: "1",
                        friendName: "1",
                        userId: "1",
                      ),
                      FriendModel(
                        id: "1",
                        friendName: "1",
                        userId: "1",
                      ),
                      FriendModel(
                        id: "1",
                        friendName: "1",
                        userId: "1",
                      ),
                    ],
                  ),
                  page: PageModel(
                    size: 1,
                    totalElements: 1,
                    totalPages: 1,
                    number: 1,
                  ),
                );
                // printPrettyJson(friends);
                print(friends);
              },
              child: Text('버튼')),
        ],
      ),
    );
  }

  Future<void> progressStart() {
    return Future.delayed(Duration(seconds: 1)).then((_) {
      setState(() {
        isShow = true;
      });
    });
  }

  Future<void> progressFinished() {
    return Future.delayed(Duration(seconds: 1)).then((_) {
      setState(() {
        isShow = false;
      });
    });
  }
}
