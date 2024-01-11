import 'package:flutter/material.dart';
import 'package:wellness/Registrationpage.dart';
import 'package:wellness/LoginPage.dart';
import 'package:wellness/Profilepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Profile(),
    );
  }
}
