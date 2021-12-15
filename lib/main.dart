import 'package:flutter/material.dart';

import 'screens/home/home.dart';

void main() {
  runApp(const Todos());
}

class Todos extends StatelessWidget {
  const Todos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.lightBlueAccent,
            appBarTheme: const AppBarTheme(
                toolbarTextStyle: TextStyle(fontSize: 24),
                elevation: 0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(color: Colors.black, size: 30))),
        home: const Home());
  }
}
