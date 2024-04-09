
import 'package:flutter/material.dart';

class DB extends StatelessWidget {
  const DB({super.key});

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
                'Pursed lip breathing',
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
                    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2FPursed%20lip%20breathing%20.gif?alt=media&token=dadc2f86-988e-4a39-b6fb-f51f5aeee8bc',
                  ),
                  fit: BoxFit.cover, // Adjust the fit of the image inside the container
                ),
              ),
///////////////////////////////////////////////
              SizedBox(
                height: 20,
              ),

              Text(
                'Diaphragmatic\n    breathing',
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
                    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2FDiaphragmatic%20breathing.gif?alt=media&token=a1ffcfa2-b512-4fff-8ca2-248550686c1f',
                  ),
                  fit: BoxFit.cover, // Adjust the fit of the image inside the container
                ),
              ),
//////////////////////////////////////////////
              SizedBox(
                height: 20,
              ),

              Text(
                'Breath focus technique',
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
                    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2FBreath%20focus%20technique.gif?alt=media&token=264246a6-54ad-4e0b-9590-5e537a018648',
                  ),
                  fit: BoxFit.cover, // Adjust the fit of the image inside the container
                ),
              ),
/////////////////////////////////////////////////
              SizedBox(
                height: 20,
              ),

              Text(
                'Lion’s breath',
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
                    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2FLion%E2%80%99s%20breath.gif?alt=media&token=92e9e6ae-2a05-4819-8b8c-0db3f3048b4a',
                  ),
                  fit: BoxFit.cover, // Adjust the fit of the image inside the container
                ),
              ),
//////////////////////////////////////////////////
              SizedBox(
                height: 20,
              ),

              Text(
                'Alternate nostril\n     breathing',
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
                    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2FAlternate%20nostril%20breathing.gif?alt=media&token=4edc09f6-0571-46df-9abd-e36ff17529de',
                  ),
                  fit: BoxFit.cover, // Adjust the fit of the image inside the container
                ),
              ),
//////////////////////////////////////// /////////////////////////////////////////////////
              SizedBox(
                height: 20,
              ),

              Text(
                'Equal breathing',
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
                    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2FEqual%20breathing.gif?alt=media&token=fbe347e9-e4d5-4c50-a81a-d3c846e77238',
                  ),
                  fit: BoxFit.cover, // Adjust the fit of the image inside the container
                ),
              ),
//////////////////////////////////////// ////////////////
              SizedBox(
                height: 20,
              ),

              Text(
                'Resonant or coherent\n          breathing',
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
                    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2FResonant%20or%20coherent%20breathing.gif?alt=media&token=e95f172b-07a9-4e9c-a759-d8a5b0504801',
                  ),
                  fit: BoxFit.cover, // Adjust the fit of the image inside the container
                ),
              ),
//////////////////////////////////////// ////////////////
              //////////////////////////////////////////////////
              SizedBox(
                height: 20,
              ),

              Text(
                'Sitali breath',
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
                    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2FSitali%20breath.gif?alt=media&token=00170d18-89e7-4975-92eb-1e5b99cb9971',
                  ),
                  fit: BoxFit.cover, // Adjust the fit of the image inside the container
                ),
              ),
//////////////////////////////////////// /////////////////////////////////////////////////
              SizedBox(
                height: 20,
              ),

              Text(
                'Deep breathing',
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
                    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2FDeep%20breathing.gif?alt=media&token=e15fba2f-8e75-4ab1-92c7-ff8a1291d9e2',
                  ),
                  fit: BoxFit.cover, // Adjust the fit of the image inside the container
                ),
              ),
//////////////////////////////////////// ////////////////
              SizedBox(
                height: 20,
              ),

              Text(
                ' Humming bee breath\n          (Bhramari)',
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
                    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2FHumming%20bee%20breath.gif?alt=media&token=68511be9-ad61-42b7-9207-2a0a3c52ca22',
                  ),
                  fit: BoxFit.cover, // Adjust the fit of the image inside the container
                ),
              ),

              SizedBox(
                height: 30,
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
