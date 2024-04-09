import 'package:flutter/material.dart';
import 'package:wellness/LoginPage.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/LS_background.png'),
            alignment: Alignment.center,
            fit: BoxFit.fill,
          ),
        ),

        child: SingleChildScrollView(
                child:  Column(
            mainAxisAlignment: MainAxisAlignment.start, // Customize as needed
            crossAxisAlignment: CrossAxisAlignment.center, // Customize as needed
            children: <Widget>[
                        SizedBox(height: 05,),
          ///////////////////////////////////////////////////
                        Image(
                            height: 180,
                            width: 180,
                            image: AssetImage('assets/logo.png')
                        ),
          ////////////////////////////////////////////////////
                        Container(
                          height: 90,
                          width: 400,
                          padding: EdgeInsets.symmetric(
                            //vertical:  10,
                            horizontal: 20,
                          ),
                          child: TextField(
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            decoration: InputDecoration(
                              label: Text(
                                'First Name',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              fillColor: Colors.black.withOpacity(0),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  style: BorderStyle.solid,
                                  width: 30,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
 //////////////////////////////////////////////////////////////
                    Container(
                      height: 90,
                      width: 400,
                      padding: EdgeInsets.symmetric(
                        //vertical:  10,

                        horizontal: 20,
                      ),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          label: Text(
                            'Last Name',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          fillColor: Colors.black.withOpacity(0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              style: BorderStyle.solid,
                              width: 30,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
      ////////////////////////////////////////////////
                    Container(
                      height: 90,
                      width: 400,
                      padding: EdgeInsets.symmetric(
                        //vertical:  10,
                        horizontal: 20,
                      ),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          label: Text(
                            'Age',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          fillColor: Colors.black.withOpacity(0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              style: BorderStyle.solid,
                              width: 30,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
      ////////////////////////////////////////////////////
                    Container(
                      height: 90,
                      width: 400,
                      padding: EdgeInsets.symmetric(
                        //vertical:  10,
                        horizontal: 20,
                      ),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          label: Text(
                            'Login ID',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          fillColor: Colors.black.withOpacity(0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              style: BorderStyle.solid,
                              width: 30,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
      ///////////////////////////////////////////////////
                    Container(
                      height: 90,
                      width: 400,
                      padding: EdgeInsets.symmetric(
                        //vertical:  10,
                        horizontal: 20,
                      ),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          label: Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          fillColor: Colors.black.withOpacity(0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              style: BorderStyle.solid,
                              width: 30,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
///////////////////////////////////////////////////
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          focusColor: Colors.white,
                          hoverColor: Colors.white,
                          value: false,
                          onChanged: (value) {},
                          side: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        Text('I agree to the terms and conditions',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        ),
                      ],
                    ),),
///////////////////////////////////////////////
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => Login()));
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(
                              color: Colors.white, // Border color
                              width: 2.0, // Border width
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black.withOpacity(0)),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                        ),
                      ),
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),

            ],

        ),
            ),
      ),
    );
  }
}
