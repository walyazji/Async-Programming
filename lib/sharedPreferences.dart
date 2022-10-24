// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'another.dart';

void main() {
  runApp(SharedPreferencesApp());
}

class SharedPreferencesApp extends StatefulWidget {
  const SharedPreferencesApp({super.key});

  @override
  State<SharedPreferencesApp> createState() => _SharedPreferencesAppState();
}

class _SharedPreferencesAppState extends State<SharedPreferencesApp> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {'second': (context) => const Another()},
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shared Preferences Application'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => const Another())));
            },
            child: const Text('Go to another screen'),
          ),
        ),
      ),
    );
  }
}

getData() {}
