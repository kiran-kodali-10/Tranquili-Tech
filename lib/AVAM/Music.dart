import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';


class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {

  final player = AudioPlayer();
  Duration d = Duration.zero;
  Duration p = Duration.zero;
  int index = 0;
  // Create a player
  List<String> list = [
    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/music%2Fm1.mp3?alt=media&token=684e7204-d17a-4b5b-96b8-0a8e3e6058aa',
    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/music%2Fm2.mp3?alt=media&token=1b4e7c09-8ce7-4e9c-ac6d-b461270cce1b',
    'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/music%2Fm3.mp3?alt=media&token=10f9da3e-ec86-4daa-a2f1-0fb9ed20d31c',
  ];

  List<String> listname = [
    'ROLEX',
    'DEVARA',
    'LOKIVERSE'
  ];

  @override

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return '${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds';
  }

  void initState() {
    super.initState();
    _initPlayer();

    player.durationStream.listen((event) {
      setState(() {
        print(p.toString()+"  "+event.toString());
        d = event!;
        print(d.toString()+"  "+event.toString());
        print(p.toString()+"  "+event.toString());
      });
    });


    player.positionStream.listen((event) {
      setState(() {
        p = event!;
        print(p.toString()+" ,lpl,pp,pl,p "+event.toString());
      });
    });
  }

  Future<void> _initPlayer() async {
    await player.setUrl(
        'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/music%2Fm1.mp3?alt=media&token=684e7204-d17a-4b5b-96b8-0a8e3e6058aa');
  }

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
          mainAxisAlignment: MainAxisAlignment.center, // Customize as needed
          crossAxisAlignment: CrossAxisAlignment.center, // Customize as needed
          children: <Widget>[

                SizedBox(
                  height: 60,
                ),

                /*  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    TextButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        iconColor: MaterialStateProperty.all(Colors.indigo[900]),
                      ),
                      child: Icon(MyCustomIcons.arrow_circle_left_outlined, size: 60,),

                    ),

                    Container(
                      width: 200,
                      height: 40,

                      child: Text(
                        'Label',
                        textAlign: TextAlign.center,

                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),


                    TextButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        iconColor: MaterialStateProperty.all(Colors.indigo[900]),
                      ),
                      child: Icon(MyCustomIcons.arrow_circle_right_outlined, size: 60,),
                    ),
                  ],
                ),*/

                Image(
                    height: 200,
                    width: 200,
                    image: AssetImage('assets/logo.png')
                ),

                SizedBox(
                  height: 10,
                ),

                Slider(
                  min: 0,
                  max: d.inSeconds.toDouble(),
                  value:  p.inSeconds.toDouble(),
                    activeColor: Colors.white,
                  inactiveColor: Colors.indigo[900],
                  onChanged: (value) async
                  {
                   // value =  p.inSeconds.toDouble();
                    setState(() {
                      p = Duration(seconds: value.toInt());
                    });
                    player.seek(p);
                  },
                ),
                Text(
                  '${_formatDuration(p)} / ${_formatDuration(d)}',
                  style: TextStyle(fontSize: 16),
                ),

                SizedBox(
                  height: 10,
                ),

                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white.withOpacity(0)),
                  ),
                  
                  onPressed: () async {
                    if (player.playing) {
                      await player.pause();
                    } else {
                      await player.play();
                    }
                  },
                  child: Text(player.playing ? 'Pause' : 'Play'),
                ),

          Padding(
              padding: EdgeInsets.all(10.0), // Padding around the container
              child:Container(
                height: 400,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 4.0, // Border width
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListView.builder(
                  itemCount: listname.length, // Number of items in the list
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title:
                      Text('Item ${listname.elementAt(index)}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onTap: () async {
                        await player.stop();
                        await player.setUrl(list.elementAt(index));
                        player.seek(Duration.zero);
                        await player.play();
                        // Action to perform when item is tapped
                      },
                    );
                  },
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

class MyCustomIcons {
  static const IconData arrow_circle_left_outlined = IconData(0xf05bc, fontFamily: 'MaterialIcons');
  static const IconData arrow_circle_right_outlined = IconData(0xf05bd, fontFamily: 'MaterialIcons');

}