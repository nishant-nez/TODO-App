// import 'dart:js';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

class DevDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue.shade300, // change color here
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/bg3.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('images/profile.png'),
                ),
                Text(
                  'Nishant Khadka',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 53,
                      fontFamily: 'GreatVibes'),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 4,
                      fontWeight: FontWeight.bold),
                ),

                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),

                  // shadowColor: Colors.amber,
                  margin: EdgeInsets.only(left: 40, right: 40, top: 15),

                  // padding: EdgeInsets.all(13),
                  color: Colors.white70,
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 30),
                        Text(
                          '+977-9860035612',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),

                // Container(
                //   margin: EdgeInsets.only(top: 40, right: 40, left: 40),
                //   padding: EdgeInsets.all(13),
                //   color: Colors.white70,
                //   child: Row(children: [
                //     Icon(
                //       Icons.phone,
                //     ),
                //     SizedBox(width: 30),
                //     Text(

                //       '+977-9860035612',
                //       style: TextStyle(fontWeight: FontWeight.bold),
                //     ),
                //   ]),
                // ),

                // Container(
                //   decoration: BoxDecoration(
                //       color: Colors.white70, // ctrl space for help
                //       borderRadius:
                //           // BorderRadius.only(topLeft: Radius.circular(30))
                //           BorderRadius.all(Radius.circular(30)),
                //   ),
                //   margin: EdgeInsets.only(left: 40, right: 40, top: 15),
                //   padding: EdgeInsets.all(13),
                //   child: Row(
                //     children: [
                //       Icon(
                //         Icons.email,
                //       ),
                //       SizedBox(width: 30),
                //       Text(
                //         'nishant.khadka@deerwalk.edu.np',
                //         style: TextStyle(fontWeight: FontWeight.bold),
                //       ),
                //     ],
                //   ),
                // ),

                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),

                  // shadowColor: Colors.amber,
                  margin: EdgeInsets.only(left: 40, right: 40, top: 15),

                  // padding: EdgeInsets.all(13),
                  color: Colors.white70,
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 30),
                        Text(
                          'nishant.khadka@deerwalk.edu.np',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),

                // Container(
                //   margin: EdgeInsets.only(left: 40, right: 40, top: 15),
                //   padding: EdgeInsets.all(13),
                //   color: Colors.white70,
                //   child: Row(
                //     children: [
                //       Icon(
                //         Icons.public
                //       ),
                //       SizedBox(width: 30),
                //       Text(
                //         'https://nishantkhadka.com.np',
                //         style: TextStyle(fontWeight: FontWeight.bold),
                //       ),
                //     ],
                //   ),
                // ),
                // Card(
                //   elevation: 10,
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(30.0),
                //   ),

                //   // shadowColor: Colors.amber,
                //   margin: EdgeInsets.only(left: 40, right: 40, top: 15),

                //   // padding: EdgeInsets.all(13),
                //   color: Colors.white70,
                //   child: Padding(
                //     padding: const EdgeInsets.all(13),
                //     child: Row(
                //       children: [
                //         Icon(Icons.public),
                //         SizedBox(width: 30),
                //         Text(
                //           'https://nishantkhadka.com.np',
                //           style: TextStyle(fontWeight: FontWeight.bold),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),

                  // shadowColor: Colors.amber,
                  margin: EdgeInsets.only(left: 40, right: 40, top: 15),

                  // padding: EdgeInsets.all(13),
                  color: Colors.white70,
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: Row(
                      children: [
                        Icon(Icons.code),
                        SizedBox(width: 30),
                        Text(
                          'C, Python, Dart',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Icon(Icons.facebook),
                    // SizedBox(
                    //   width: 50,
                    // ),
                    // Icon(Icons.directions),
                    FloatingActionButton(
                      child: Center(
                        child: Container(
                          height: 20,
                          width: 20,
                          child: Icon(Icons.facebook),
                        ),
                      ),
                      onPressed: () {
                        // print("printed!");
                        launch('https://www.facebook.com/nishant.nez/');
                      },
                    ),
                    FloatingActionButton(
                      child: Center(
                        child: Container(
                          height: 20,
                          width: 20,
                          child: Icon(Icons.enhance_photo_translate),
                        ),
                      ),
                      onPressed: () {
                        // print("printed!");
                        launch('https://www.instagram.com/nishant.nez/');
                      },
                    ),
                    FloatingActionButton(
                      child: Center(
                        child: Container(
                          height: 20,
                          width: 20,
                          child: Icon(Icons.public),
                        ),
                      ),
                      onPressed: () {
                        // print("printed!");
                        launch('https://nishantkhadka.com.np/');
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     primary: Colors.amber,
                //     shadowColor: Colors.red,
                //     elevation: 10,
                //   ),
                //   onPressed: () {
                //     launch('https://google.com');
                //   },
                //   child: Text(
                //     'Flutter',
                //     style: TextStyle(color: Colors.black),
                //   ),
                // )
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Go Back"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// void launchURL()  async => await canLaunch('https://flutter.dev')
//     ? launch('https://youtube.com')
//     : throw 'Could not launch https://flutter.dev';