import 'package:flutter/material.dart';
import 'package:zyramarket/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blueAccent.shade700,
        colorScheme: ColorScheme.fromSwatch().copyWith(
           primary: Colors.blueAccent.shade700,
          secondary:Colors.blue.shade50),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}