import 'package:flutter/material.dart';
import 'package:riverpod_example/pages/home.dart';
import 'package:riverpod_example/pages/settings.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        primaryColor: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "/settings": (context) => Settings(),
      },
    );
  }
}
