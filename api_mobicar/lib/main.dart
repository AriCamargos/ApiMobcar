import 'package:flutter/material.dart';

import 'components/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
          subtitle2: TextStyle()
        ),
        colorScheme: const ColorScheme.light(
          primary: Colors.black,
          
        ),
      ),
      home: const HomePage(),
    );
  }
}
