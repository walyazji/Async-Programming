import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Stream<int> getData() {
    Stream<int> myStream =
        Stream.periodic(const Duration(milliseconds: 500), (a) => a);

    return myStream;
  }

  int i = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Async App'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              await for (final item in getData()) {
                setState(() {
                  i = (item < 10 ? item : 0);
                });
              }
            },
            child: const Text('Click Me !'),
          ),
        ),
      ),
    );
  }
}
