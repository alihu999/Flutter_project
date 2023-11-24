import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

String googleurl = "";
String serviceName = "";

class GoogleService extends StatefulWidget {
  GoogleService(String url, String servicename, {super.key}) {
    googleurl = url;
    serviceName = servicename;
  }

  @override
  State<GoogleService> createState() => _GoogleServiceState();
}

class _GoogleServiceState extends State<GoogleService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff6b48ff),
        title: Text(serviceName),
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: googleurl,
      ),
    );
  }
}
