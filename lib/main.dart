import 'package:flutter/material.dart';
import 'package:untitled/forms/login_page.dart';
import 'package:untitled/homepage/homepage_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(
          primaryColor: Colors.blue,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: Colors.purple,
              unselectedItemColor: Colors.grey.shade600)),
      home: LoginPage(),
    );
  }
}
