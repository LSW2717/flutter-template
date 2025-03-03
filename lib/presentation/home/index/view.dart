import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/view_layout/shell_view.dart';

class View extends ConsumerStatefulWidget implements ShellView{

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
          if(isShow)
          CircularProgressIndicator(),

          ElevatedButton(onPressed: (){
            handleButton1();
          }, child: Text('버튼')),
        ],
      ),
    );
  }

  void handleButton1(){
    progressStart().then((_){
      print('hi');
      //return controller.find();
    }).then((_){
      return progressFinished();
    }).then((_){
      print('hihi');
    }).catchError((e){
      print('catch');
    });
  }




  void seenActive(){

  }

  Future<void> progressStart(){
    return Future.delayed(Duration(seconds: 1)).then((_){
      setState(() {
        isShow = true;
      });
    });
  }

  Future<void> progressFinished(){
    return Future.delayed(Duration(seconds: 1)).then((_){
      setState(() {
        isShow = false;
      });
    });
  }
}
