import 'package:flutter/material.dart';
import 'package:wellness/AVAM/Activities.dart';

class EY extends StatelessWidget {
  const EY({super.key});

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
              Text(
                'CHILD POSE',
                style: TextStyle(
                  color: Colors.white,
                //  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2, // Border width
                  ),
                ),
                child: Image(
                  image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Fanim-child-pose.gif?alt=media&token=e907e3dc-b946-4f4f-9c50-09c6d443cdae',
                  ),
                  fit: BoxFit.cover, // Adjust the fit of the image inside the container
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                'CAT COW POSE',
                style: TextStyle(
                  color: Colors.white,
                  //fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2, // Border width
                  ),
                ),
                child: Image(
                  image: NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Fanim-cat-cow-pose.gif?alt=media&token=7f032490-8f80-42d1-9fbb-1bf1a7b27fea',
                  ),
                  fit: BoxFit.cover, // Adjust the fit of the image inside the container
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                'CAT COW POSE',
                style: TextStyle(
                  color: Colors.white,
                  //fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2, // Border width
                  ),
                ),
                child: Image(
                  image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Fanim-sphinx-pose.gif?alt=media&token=34b52662-c411-4478-9f9d-61688a479bce',
                  ),
                  fit: BoxFit.cover, // Adjust the fit of the image inside the container
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                'STRECHES',
                style: TextStyle(
                  color: Colors.white,
                  //fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2, // Border width
                  ),
                ),
                child: Image(
                  image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Fanim-arm-crossover-stretch.gif?alt=media&token=99dcfc48-448b-40f4-84f6-457ccfbcb739',
                  ),
                  fit: BoxFit.cover, // Adjust the fit of the image inside the container
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2, // Border width
                  ),
                ),
                child: Image(
                  image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Fanim-above-head-chest-stretch.gif?alt=media&token=8275d086-7d40-4016-800b-005d242f7078',
                  ),
                  fit: BoxFit.cover, // Adjust the fit of the image inside the container
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2, // Border width
                  ),
                ),
                child: Image(
                  image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Fanim-back-slaps-wrap-around-stretch.gif?alt=media&token=1afe4af1-64b9-4634-b7b3-c61c3b751592',
                  ),
                  fit: BoxFit.cover, // Adjust the fit of the image inside the container
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2, // Border width
                  ),
                ),
                child: Image(
                  image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Fanim-lying-knee-to-chest.gif?alt=media&token=f17f985a-b8a0-45d5-8674-5951fc0532c8',
                  ),
                  fit: BoxFit.cover, // Adjust the fit of the image inside the container
                ),
              ),

              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  side: MaterialStateProperty.all(BorderSide(
                    color: Colors.white, // Border color
                    width: 2, // Border width
                  )),
                ),
                child: Text(
                  'Back',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )



            ],

          ),


        ),

      ),
    );
  }
}
