import 'package:flutter/material.dart';
import 'package:wellness/Account_Details_update.dart';

import 'package:wellness/AVAM/Activities.dart';
import 'package:wellness/AVAM/Articlespage.dart';
import 'package:wellness/AVAM/Videopage.dart';
import 'package:wellness/AVAM/Music.dart';
import 'package:wellness/AVAM/Profile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  int _selectedIndex =2 ;

  final List<Widget> _pages = [
    Articles(),
    Video(),
    Profilepage(),
    Activities(),
    Music(),
  ];

  Widget build(BuildContext context) {
    return new Scaffold(

      body: _pages[_selectedIndex],

      bottomNavigationBar:  BottomNavigationBar(

                currentIndex: _selectedIndex, onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },

                items: [
                          BottomNavigationBarItem(icon: Icon(MyCustomIcons.article_outlined, size: 40,), label: 'Articles', backgroundColor:  Colors.cyan.withOpacity(0.5),),
                          BottomNavigationBarItem(icon: Icon(MyCustomIcons.featured_video_outlined, size: 40,), label: 'Video', backgroundColor: Colors.tealAccent.withOpacity(0.5),),
                          BottomNavigationBarItem(icon: Icon(MyCustomIcons.account_circle, size: 40,), label: 'Profile', backgroundColor: Colors.white.withOpacity(0.5),),
                          BottomNavigationBarItem(icon: Icon(MyCustomIcons.checklist_sharp, size: 40,), label: 'Activities', backgroundColor: Colors.tealAccent.withOpacity(0.5),),
                          BottomNavigationBarItem(icon: Icon(MyCustomIcons.library_music_outlined, size: 40,), label: 'Music', backgroundColor: Colors.cyan.withOpacity(0.5),),
                       ],

                selectedItemColor: Colors.cyan,
                unselectedItemColor: Colors.black,
                backgroundColor: Colors.cyan,
                elevation: 100.0,
                selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
                showSelectedLabels: true,
                showUnselectedLabels: true,
                selectedIconTheme: IconThemeData(color: Colors.cyan),
                unselectedIconTheme: IconThemeData(color: Colors.black),

              ),



    );
  }
}


class MyCustomIcons {

  static const IconData account_circle_outlined = IconData(0xee35, fontFamily: 'MaterialIcons');
  static const IconData circle_notifications_outlined = IconData(0xef52, fontFamily: 'MaterialIcons');
  static const IconData contact_support_outlined = IconData(0xef7c, fontFamily: 'MaterialIcons');
  static const IconData comment_outlined = IconData(0xef6e, fontFamily: 'MaterialIcons');
  static const IconData power_settings_new = IconData(0xe4e3, fontFamily: 'MaterialIcons');
  static const IconData settings = IconData(0xe57f, fontFamily: 'MaterialIcons');


  static const IconData checklist_sharp = IconData(0xe859, fontFamily: 'MaterialIcons');
  static const IconData library_music_outlined = IconData(0xf161, fontFamily: 'MaterialIcons');
  static const IconData article_outlined = IconData(0xee93, fontFamily: 'MaterialIcons');
  static const IconData featured_video_outlined = IconData(0xf04d, fontFamily: 'MaterialIcons', matchTextDirection: true);
  static const IconData account_circle = IconData(0xe043, fontFamily: 'MaterialIcons');

}