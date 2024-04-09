import 'package:flutter/material.dart';

class QA extends StatefulWidget {
  const QA({super.key});

  @override
  State<QA> createState() => _QAState();
}

class _QAState extends State<QA> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            alignment: Alignment.center,
            fit: BoxFit.fill,
          ),
        ),


        child: SingleChildScrollView(

          child: Text('Music'),


        ),

      ),
    );
  }
}
