import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(GoldHosting());
}

class GoldHosting extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gold Hosting App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gold Hosting App'),
        backgroundColor: Color(0xFF202c3c),
      ),
      body: WebView(
        initialUrl: 'https://gold-hosting.me/panel/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
