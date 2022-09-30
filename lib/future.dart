import 'package:flutter/material.dart';

class FutureApp extends StatelessWidget {
  const FutureApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        // future: ,
        builder: ((ctx, snapshot) {
      return Scaffold(
        appBar: AppBar(),
        body: Container(),
      );
    }));
  }
}
