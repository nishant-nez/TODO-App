// import 'package:final_app/second_page.dart';
// import 'package:final_app/todo.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/widgets.dart';

import 'todo1.dart';
import 'devdetails.dart';

void main() {
  runApp(MaterialApp(
    title: 'TO-DO App',
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue.shade300, // change color here
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'TO-DO\n  APP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 53,
                        // fontFamily: 'GreatVibes'
                      ),
                    ),
                  ],
                ),
              ),

              // Image(image: AssetImage('images/tick.png')),

              Padding(
                padding: const EdgeInsets.all(22.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/tick.png'),
                ),
              ),

              // Text(
              //   'Flutter Developer',
              //   style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 20,
              //       letterSpacing: 4,
              //       fontWeight: FontWeight.bold),
              // ),

              // Container(
              //   decoration: BoxDecoration(
              //       color: Colors.white70, // ctrl space for help
              //       borderRadius:
              //           BorderRadius.only(topLeft: Radius.circular(30))),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TODOAPP()),
                  );
                  // print('tapped');
                },
                child: Card(
                  elevation: 10,
                  // shadowColor: Colors.amber,
                  margin: EdgeInsets.only(left: 40, right: 40, top: 15, bottom: 15),
                  // padding: EdgeInsets.all(13),
                  color: Colors.blue[800],
                  shape: (
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(Icons.code),
                        SizedBox(width: 30),
                        Text(
                          'Tasks',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 27),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DevDetail()));
                  // print('tapped');
                },
                child: Card(
                  elevation: 10,
                  // shadowColor: Colors.amber,
                  margin: EdgeInsets.only(left: 40, right: 40, top: 15),
                  // padding: EdgeInsets.all(13),
                  color: Colors.blue[800],
                  shape: (RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(Icons.code),
                        SizedBox(width: 30),
                        Text(
                          'Developer\'s Details',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,
                              fontSize: 27),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 30,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Icon(Icons.facebook),
              //     SizedBox(
              //       width: 50,
              //     ),
              //     Icon(Icons.directions),
              //   ],
              // ),
              // SizedBox(
              //   height: 40,
              // ),
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
            ],
          ),
        ),
      ),
    );
  }
}
