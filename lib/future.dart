import 'package:flutter/material.dart';

void main() {
  runApp(const FutureApp());
}

class FutureApp extends StatefulWidget {
  const FutureApp({Key? key}) : super(key: key);

  @override
  State<FutureApp> createState() => _FutureAppState();
}

class _FutureAppState extends State<FutureApp> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 1), () => info(2)),
        builder: ((ctx, snapshot) {
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                title: Text(
                    (snapshot.hasData ? snapshot.hasData : 'Demo').toString()),
              ),
              body: Center(
                child: snapshot.connectionState == ConnectionState.waiting
                    ? const CircularProgressIndicator()
                    : const Text('Done !'),
              ),
            ),
          );
        }));
  }
}

int info(int a) {
  return a;
}
