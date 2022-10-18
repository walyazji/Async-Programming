import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(List<String> args) {
  runApp(URLApp());
}

class URLApp extends StatefulWidget {
  const URLApp({Key? key}) : super(key: key);

  @override
  State<URLApp> createState() => _URLAppState();
}

class _URLAppState extends State<URLApp> {
  Uri url = Uri.parse(
      'https://play.google.com/store/apps/details?id=com.facebook.katana&hl=en&gl=US');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('URL Application'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              try {
                await canLaunchUrl(url)
                    ? await launchUrl(url)
                    : throw 'This URL is Null';
              } catch (e) {
                Center(
                  child: Text(e.toString()),
                );
              }
            },
            child: const Text('Get The App'),
          ),
        ),
      ),
    );
  }
}
