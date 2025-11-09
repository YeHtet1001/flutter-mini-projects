import 'package:flutter/material.dart';
import 'package:mydropdownapp/screens/home.dart';
import 'package:mydropdownapp/screens/singledropdowntextfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
      routes: {
        "/home": (context) => HomeScreen(),
        "/singledropdown": (context) => SingleDropDownTextFieldScreen(),
      },
    );
  }
}
