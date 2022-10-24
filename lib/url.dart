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
  // var str = 'Get The App';
  var str = 'Get The Video';
  // Uri url = Uri.parse(
  //     'https://play.google.com/store/apps/details?id=com.facebook.katana&hl=en&gl=US');
  var url = 'https://youtu.be/izg23U8nHjs';
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
                await canLaunch(url)
                    ? await launch(
                        url,
                        forceWebView: true,
                        enableJavaScript: true,
                      )
                    : throw 'This URL is Null';
              } catch (e) {
                setState(() {
                  str = e.toString();
                });
              }
            },
            child: Text(str),
          ),
        ),
      ),
    );
  }
}
