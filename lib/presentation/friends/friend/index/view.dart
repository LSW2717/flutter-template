import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class View extends StatelessWidget{
  const View({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){context.pop();},
            icon: Icon(Icons.arrow_back)),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text("다른페이지"),
      ),
    );
  }
}
