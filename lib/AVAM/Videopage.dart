import 'package:flutter/material.dart';
import 'package:wellness/AVAM/Video_Player.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  List<String> videos = [
    'Video 1',
    'Video 2',
    'Video 3',
    // Add more video titles as needed
  ];

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
            children: [
              // Other widgets or content can be added here
              // ...

              // Video list using ListView.builder
               ListView.builder(

                shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
                itemCount: videos.length,
                itemBuilder: (context, index) {
                  return ListTile(

                            title: Text(videos[index],style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,fontFamily: 'Qwigley',),),
                            subtitle: Container(
                               child: VideoPlayerScreen(),
                            ),
                    // You can customize the ListTile as needed
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


