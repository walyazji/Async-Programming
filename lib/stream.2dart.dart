import 'package:async_proramming/main.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyAppStream());
}

class MyAppStream extends StatelessWidget {
  const MyAppStream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      builder: (ctx, snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Stream App'),
          ),
          body: null,
        );
      },
      stream: Stream.periodic(const Duration(milliseconds: 500), (a) => a * 2),
    );
  }
}
