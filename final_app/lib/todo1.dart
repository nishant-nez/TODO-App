// import 'dart:js';

import 'package:flutter/material.dart';

class TODOAPP extends StatefulWidget {
  const TODOAPP({Key? key}) : super(key: key);

  @override
  _TODOAPPState createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
  late String value;
  
  var listTODO = [''];

  addTODO(String item) {
    setState(() {
      listTODO.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TODO APP"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.purple,
                Colors.blue
              ]
            )
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        
        child: Container(
          height: 60,
          width: 60,
          decoration:BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.purple,
                Colors.blue
              ],
            ),
          ), 
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),          
        onPressed: () {
          addTODO(value);
        },
        
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ListView.builder(
        itemCount: listTODO.length,
        itemBuilder: (context, index) {
          return index == 0? Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "New Task"
              ),
              onChanged: (val){
                value = val;
              },
            ),
          ): ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text(
              '${listTODO[index]}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          );
        },
        
      )
    );
  }
}
