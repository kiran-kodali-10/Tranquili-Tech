import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  int _selectedIndex =0 ;

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
                        child:  Column(
                          //mainAxisAlignment: MainAxisAlignment.start, // Customize as needed
                          // crossAxisAlignment: CrossAxisAlignment.center, // Customize as needed
                          children: <Widget>[
                            SizedBox(height: 20,),
                            //////////////////////////////////////////////////////////////
                            Image(
                                height: 180,
                                width: 180,
                                image: AssetImage('assets/logo.png')
                            ),
                            //////////////////////////////////////////////////////////
                            SizedBox(height: 10,),
                            ///////////////////////////////////////////////////////////////////////
                            Container(
                              alignment: Alignment.center,
                              height: 100,
                              width: 340,

                              decoration: BoxDecoration(

                                color: Colors.tealAccent.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  color: Colors.tealAccent.withOpacity(0.2),
                                  width: 3.0,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),


                              child: Row(

                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,

                                children: <Widget>[

                                  SizedBox(
                                    width: 10,
                                  ),

                                  CircleAvatar(

                                    radius: 35.0,
                                    backgroundColor: Colors.black.withOpacity(0.2), // Background color of the circle
                                    child: Icon(
                                      Icons.person,
                                      size: 55.0,
                                      color: Colors.white, // Color of the person icon
                                    ),
                                  ),

                                  SizedBox(
                                    width: 25,
                                  ),

                                  Column(

                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,

                                    children: <Widget>[

                                      SizedBox(height: 8.0),
                                      Text(
                                        'John Doe', // Replace with the user's name
                                        style: TextStyle(fontSize: 18.0,),
                                      ),

                                      SizedBox(height: 5.0),
                                      Text(
                                        'john.doe@example.com', // Replace with the user's email
                                        style: TextStyle(fontSize: 18.0, color: Colors.black),
                                      ),

                                      SizedBox(height: 5.0),
                                      Text(
                                        '(408)554-4105', // Replace with the user's email
                                        style: TextStyle(fontSize: 18.0, color: Colors.black),
                                      ),

                                    ],
                                  ),
                                ],
                              ),

                            ),
              ////////////////////////////////////////////////////////////////////////
                            SizedBox(height: 10,),
              //////////////////////////////////////////////////////////////////////
                            Container(
                              alignment: Alignment.center,
                              height: 366,
                              width: 340,

                              decoration: BoxDecoration(
                                color: Colors.tealAccent.withOpacity(0),
                                borderRadius: BorderRadius.circular(23.0),
                                border: Border.all(
                                  color: Colors.tealAccent.withOpacity(0.2),
                                  width: 3.0,
                                ),

                              ),

                              child: Column(

                                children: <Widget>[

                                  Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.cyan.withOpacity(0.3),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.tealAccent.withOpacity(0.2),
                                        width: 3.0,
                                      ),
                                    ),

                                    child: TextButton(

                                      onPressed:(){},

                                      child: Row(

                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,

                                        children: <Widget>[

                                          Icon(
                                            MyCustomIcons.account_circle_outlined, // Use the custom IconData
                                            size: 40.0, // Adjust the size as needed
                                            color: Colors.white, // Adjust the color as needed
                                          ),

                                          SizedBox(
                                            width: 20,
                                          ),

                                          Text(
                                            'Account Details',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black
                                            ),
                                          ),
                                        ],

                                      ),

                                    ),
                                  ),

                                  Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.tealAccent.withOpacity(0.3),

                                      border: Border.all(
                                        color: Colors.tealAccent.withOpacity(0.2),
                                        width: 3.0,
                                      ),
                                    ),

                                    child: TextButton(

                                      onPressed:(){},

                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[

                                          Icon(
                                            MyCustomIcons.circle_notifications_outlined, // Use the custom IconData
                                            size: 40.0, // Adjust the size as needed
                                            color: Colors.white, // Adjust the color as needed
                                          ),

                                          SizedBox(
                                            width: 20,
                                          ),

                                          Text(
                                            'Notifications',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black
                                            ),
                                          ),
                                        ],

                                      ),

                                    ),

                                  ),

                                  Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.cyan.withOpacity(0.3),

                                      border: Border.all(
                                        color: Colors.tealAccent.withOpacity(0.2),
                                        width: 3.0,
                                      ),
                                    ),
                                    child: TextButton(

                                      onPressed:(){},

                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[

                                          Icon(
                                            MyCustomIcons.settings, // Use the custom IconData
                                            size: 35.0, // Adjust the size as needed
                                            color: Colors.white, // Adjust the color as needed
                                          ),

                                          SizedBox(
                                            width: 23,
                                          ),

                                          Text(
                                            'Settings',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black
                                            ),
                                          ),
                                        ],

                                      ),

                                    ),



                                  ),

                                  Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.tealAccent.withOpacity(0.3),

                                      border: Border.all(
                                        color: Colors.tealAccent.withOpacity(0.2),
                                        width: 3.0,
                                      ),
                                    ),

                                    child:TextButton(

                                      onPressed:(){},

                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[

                                          Icon(
                                            MyCustomIcons.contact_support_outlined, // Use the custom IconData
                                            size: 35.0, // Adjust the size as needed
                                            color: Colors.white, // Adjust the color as needed
                                          ),

                                          SizedBox(
                                            width: 24,
                                          ),

                                          Text(
                                            'Help & Support',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black
                                            ),
                                          ),
                                        ],

                                      ),

                                    ),

                                  ),

                                  Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.cyan.withOpacity(0.3),

                                      border: Border.all(
                                        color: Colors.tealAccent.withOpacity(0.2),
                                        width: 3.0,
                                      ),
                                    ),


                                    child:TextButton(

                                      onPressed:(){},

                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[

                                          Icon(
                                            MyCustomIcons.comment_outlined, // Use the custom IconData
                                            size: 35.0, // Adjust the size as needed
                                            color: Colors.white, // Adjust the color as needed
                                          ),

                                          SizedBox(
                                            width: 24,
                                          ),

                                          Text(
                                            'Privacy Aggrement',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black
                                            ),
                                          ),
                                        ],

                                      ),

                                    ),

                                  ),

                                  Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.tealAccent.withOpacity(0.3),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.tealAccent.withOpacity(0.2),
                                        width: 3.0,
                                      ),
                                    ),
                                    child:TextButton(

                                      onPressed:(){},

                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[

                                          Icon(
                                            MyCustomIcons.power_settings_new, // Use the custom IconData
                                            size: 35.0, // Adjust the size as needed
                                            color: Colors.white, // Adjust the color as needed
                                          ),

                                          SizedBox(
                                            width: 23,
                                          ),

                                          Text(
                                            'Logout',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black
                                            ),
                                          ),
                                        ],

                                      ),

                                    ),


                                  ),


                                ],
                              ),




                            ),

            ],
          ),
        ),
      ),

      bottomNavigationBar:  BottomNavigationBar(

                currentIndex: _selectedIndex,
                onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },

                items: [
                          BottomNavigationBarItem(
                            icon: Icon(MyCustomIcons.article_outlined,
                              size: 40,),
                            label: 'Articles',
                            backgroundColor:  Colors.cyan.withOpacity(0.5),
                          ),

                          BottomNavigationBarItem(
                            icon: Icon(MyCustomIcons.featured_video_outlined,
                              size: 40,

                            ),
                            label: 'Video',
                            backgroundColor: Colors.tealAccent.withOpacity(0.5),
                          ),

                          BottomNavigationBarItem(
                            icon: Icon(MyCustomIcons.account_circle,
                              size: 40,

                            ),
                            label: 'Profile',
                            backgroundColor: Colors.white.withOpacity(0.5),
                          ),

                          BottomNavigationBarItem(
                            icon: Icon(MyCustomIcons.checklist_sharp,
                              size: 40,

                            ),
                            label: 'Activities',
                            backgroundColor: Colors.tealAccent.withOpacity(0.5),
                          ),

                        BottomNavigationBarItem(
                          icon: Icon(MyCustomIcons.library_music_outlined,
                            size: 40,
                          ),
                          label: 'Music',
                          backgroundColor: Colors.cyan.withOpacity(0.5),
                        ),
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