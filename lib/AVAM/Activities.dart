import 'package:flutter/material.dart';
import 'package:wellness/AVAM/ActivityPages/exerciseandyoga.dart';
import 'package:wellness/AVAM/ActivityPages/deepbreathing.dart';

import 'package:wellness/AVAM/ActivityPages/QandA.dart';

import 'package:wellness/AVAM/ActivityPages/visualsenses.dart';


class Activities extends StatefulWidget {
  const Activities({super.key});

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
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

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            SizedBox(
              height: 60,
            ),

            Image(
                height: 200,
                width: 200,
                image: AssetImage('assets/logo.png')
            ),


            SizedBox(
              height: 10,
            ),

            Container(

              height: 60,
              width: 290,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white, // Border color
                  width: 3.0, // Border width
                ),
                borderRadius: BorderRadius.circular(20),
              ),
               child: TextButton(
                    onPressed: () {
                      Navigator.push(context, new MaterialPageRoute(builder: (context) => QA()));
                    },

                    child: Text(
                      'Quiz and Assignments',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ) ,
                    )
               ),
            ),
            SizedBox(
              height: 10,
            ),

            Container(

              height: 60,
              width: 290,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white, // Border color
                  width: 3.0, // Border width
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                  onPressed: () { Navigator.push(context, new MaterialPageRoute(builder: (context) => DB()));},

                  child: Text(
                    'Deep Breathing',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ) ,
                  )
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(

              height: 60,
              width: 290,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white, // Border color
                  width: 3.0, // Border width
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => EY()));
                  },

                  child: Text(
                    'Exercise and Yoga',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ) ,
                  )
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(

              height: 60,
              width: 290,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white, // Border color
                  width: 3.0, // Border width
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => VS()));
                  },
                  child: Text(
                    'Visualization Senses',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ) ,
                  )
              ),
            ),

          ],

        ),
      ),

      ),
    );
  }
}
