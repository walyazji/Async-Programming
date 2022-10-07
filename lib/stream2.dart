import 'dart:html';

import 'package:async_proramming/main.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyAppStream());
}

class MyAppStream extends StatelessWidget {
  const MyAppStream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStream(),
    );
  }
}

class MyStream extends StatefulWidget {
  const MyStream({super.key});

  @override
  State<MyStream> createState() => _MyStreamState();
}

class _MyStreamState extends State<MyStream> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 5), (a) => a),
      builder: (ctx, snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: Text((snapshot.hasData && snapshot.data as num < 10)
                ? '${snapshot.data}'
                : 'Demo'),
          ),
          body: Container(
            child: snapshot.connectionState == ConnectionState.waiting
                ? const Center(child: CircularProgressIndicator())
                : const Center(child: Text('Done')),
          ),
        );
      },
    );
  }
}
