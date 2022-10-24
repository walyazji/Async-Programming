// ignore_for_file: prefer_final_fields, unused_field, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Another extends StatefulWidget {
  const Another({super.key});

  @override
  State<Another> createState() => _AnotherState();
}

class _AnotherState extends State<Another> {
  String _name = "";
  int _age = 0;
  double _height = 0.0;
  bool _developer = false;
  List<String> _skills = ["", ""];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Another Screen')),
      body: Center(
        child: DefaultTextStyle(
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Name : $_name'),
                Text('Age : $_age'),
                Text('Height : $_height'),
                Text('Developer : $_developer'),
                Text('Skill 1 : ${_skills[0]}'),
                Text('Skill 2 : ${_skills[1]}'),
                ElevatedButton(
                    onPressed: (() async {
                      await getData();
                    }),
                    child: const Text('Get Data'))
              ],
            )),
      ),
    );
  }

  getData() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();

    setState(() {
      _name = _pref.getString('name')!;
      _age = _pref.getString('age') as int;
      _height = _pref.getString('height') as double;
      _developer = _pref.getString('developer') as bool;
      _skills = _pref.getString('skills') as List<String>;
    });
  }
}
