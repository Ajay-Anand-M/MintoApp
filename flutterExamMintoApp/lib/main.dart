import 'package:flutter/material.dart';
import 'package:minto/screens/menu.dart';
import 'package:minto/screens/splashScreen.dart';
import 'package:minto/screens/table.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MINTO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

