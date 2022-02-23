import 'package:api_mobicar/screens/form_page.dart';
import 'package:api_mobicar/screens/home_page.dart';
import 'package:api_mobicar/screens/reserved_page.dart';
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
          primaryTextTheme: const TextTheme(),
          colorScheme: const ColorScheme.light(primary: Colors.black),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/form_page': (context) => const FormPage(),
          '/reserved_page': (context) => const ReservedPage(),
        });
  }
}


