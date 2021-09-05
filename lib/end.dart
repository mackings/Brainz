import 'package:flutter/material.dart';
import 'package:brains/homepg.dart';
import 'package:brains/homepg2.dart';
import 'package:brains/homepg3.dart';
import 'package:brains/homepg4.dart';
import 'package:brains/homepg5.dart';

class endgame extends StatefulWidget {
  const endgame({Key?key}) : super(key: key);

  @override
  _endgameState createState() => _endgameState();
}

class _endgameState extends State<endgame> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(18, 39, 226, 1),
          title: Text("Hey yo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Yo you Scored${Yourscore}",style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    ],
                  ),
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(18, 39, 226, 1),
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
