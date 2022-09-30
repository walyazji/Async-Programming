// ignore_for_file: prefer_const_declarations, unused_local_variable, unused_import, avoid_print

import 'package:http/http.dart' as http;
import 'dart:convert';

void main(List<String> args) async {
  var data = await fetchAlbum();
  // print(data);

  for (var i = 0; i < 100; i++) {
    print(data[i]['id']);
    print(data[i]['title']);
  }
}

Future<dynamic> fetchAlbum() async {
  final url = 'https://jsonplaceholder.typicode.com/albums';
  final res = await http.get(Uri.parse(url));

  if (res.statusCode == 200) {
    var obj = json.decode(res.body);
    return obj;
  } else {
    throw Exception('Error!');
  }
}
