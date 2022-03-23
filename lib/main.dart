import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Message Cipher',
      theme: ThemeData.dark(),
      home: const HomePage(title: 'Message Cipher'),
    );
  }
}
