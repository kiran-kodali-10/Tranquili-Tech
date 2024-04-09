import 'dart:async';
import 'package:flutter/material.dart';

class VS extends StatefulWidget {
  const VS({Key? key}) : super(key: key);

  @override
  State<VS> createState() => _VSState();
}

class _VSState extends State<VS> {
  int currentIndex = 0;
  final List<String> imageList = [
    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/photoimages%2Fblake-verdoorn-cssvEZacHvQ-unsplash.jpg?alt=media&token=bac5ab42-26e5-4e4b-9f77-1170b81f8090',
    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/photoimages%2Feberhard-grossgasteiger-jCL98LGaeoE-unsplash.jpg?alt=media&token=87ae3097-78ec-4af6-98e7-b246bd082ef3',
    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/photoimages%2Fmichael-baccin-Cv5ooHwI2DQ-unsplash.jpg?alt=media&token=30ed35c1-82a2-4848-b72b-f8dff984bb53',
    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/photoimages%2Fthomas-kelley-JoH60FhTp50-unsplash.jpg?alt=media&token=ab7518e5-3011-4a28-ad24-f998168f3f70',
    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/photoimages%2Fzetong-li-7pUHeP1GRC4-unsplash.jpg?alt=media&token=6b820101-4ade-4679-8cc9-ada6a232befa',
  ];

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (mounted) {
        setState(() {
          currentIndex = (currentIndex + 1) % imageList.length;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              SizedBox(
                height: 30 ,
              ),
              Image(
                  height: 200,
                  width: 200,
                  image: AssetImage('assets/logo.png')
              ),
              Container(
                height: 600,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 3.0, // Border width
                  ),
                  //borderRadius: BorderRadius.circular(20),
                ),
                child: PageView.builder(
                  itemCount: imageList.length,
                  controller: PageController(
                    initialPage: 0,
                    viewportFraction: 1.0,
                  ),
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      imageList[index],

                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
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
