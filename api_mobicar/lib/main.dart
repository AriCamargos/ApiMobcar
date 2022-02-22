import 'package:api_mobicar/components/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryTextTheme: const TextTheme(
          headline3: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            fontSize: 15,
          ),
          subtitle1: TextStyle(
            fontWeight: FontWeight.w400,
            letterSpacing: 1,
          ),
          subtitle2: TextStyle(
            color: Colors.lightBlue,
          ),
        ),
        colorScheme: const ColorScheme.light(
            primary: Colors.black, secondary: Colors.blueAccent),
      ),
      home: const HomePage(),
      /* routes: {
        RoutesPage.Form_Page: (context) => const FormPage(),
      } */
    );
  }
}
