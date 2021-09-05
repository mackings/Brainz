import 'package:brains/homepg2.dart';
import 'package:brains/homepg3.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import"package:brains/testground.dart";
import 'package:fluttertoast/fluttertoast.dart';

var Yourscore= 0;


class myhome extends StatefulWidget {
  const myhome({Key? key}) : super(key: key);

  @override
  _myhomeState createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 39, 226, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(18, 39, 226, 1),
        title: Text(" Your Score : ${Yourscore}"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //text
              SizedBox( height: 15,),
              Text( "Axios is a ?", textAlign: TextAlign.center, style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Ubuntu',
                  fontSize: 30,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1,
              ),),

              //timer
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularCountDownTimer(
                        width: 80, height: 150, duration: 5, fillColor: Colors.white, ringColor: Colors.black,
                      onComplete: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>myhome2()));
                      },

                    ),

                  ],
                ),
              ),
              //options
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //firstcon
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: (){
                        Fluttertoast.showToast(
                            msg: "Wrong",
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          gravity: ToastGravity.SNACKBAR,
                        );
                        setState(() {
                          Yourscore--;
                        });

                      },
                      child: Container(
                        child: Column(
                          children: [
                            //circle
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Text('A', textAlign: TextAlign.center, style: TextStyle(
                                        color: Color.fromRGBO(252, 249, 249, 1),
                                        fontFamily: 'Ubuntu',
                                        fontSize: 25,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1
                                    ),)

                                  ],
                                ),
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color : Color.fromRGBO(18, 39, 226, 1),
                                    borderRadius : BorderRadius.circular(80),
                                  )
                              ),
                            ),
                            //textoption
                            Text('Sync Req', textAlign: TextAlign.center, style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Ubuntu',
                                fontSize: 20,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1
                            ),)

                          ],
                        ),
                          width: 150,
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color : Color.fromRGBO(252, 249, 249, 1),
                          ),

                      ),
                    ),
                  ),
                  //second con
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(
                        children: [
                          //circle
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: InkWell(
                              onTap: (){
                                Fluttertoast.showToast(
                                  msg: "Correct",
                                  backgroundColor: Colors.blue,
                                  textColor: Colors.white,
                                  gravity: ToastGravity.SNACKBAR,
                                );
                                setState(() {
                                  Yourscore++;
                                });

                              },
                              child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Text('B', textAlign: TextAlign.center, style: TextStyle(
                                          color: Color.fromRGBO(252, 249, 249, 1),
                                          fontFamily: 'Ubuntu',
                                          fontSize: 25,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),)

                                    ],
                                  ),
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color : Colors.black,
                                    borderRadius : BorderRadius.circular(80),
                                  )
                              ),
                            ),
                          ),
                          //textoption
                          Text('Future Req', textAlign: TextAlign.center, style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Ubuntu',
                              fontSize: 20,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
                              height: 1
                          ),)

                        ],
                      ),
                      width: 150,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color : Color.fromRGBO(252, 249, 249, 1),
                      ),

                    ),
                  ),


                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //firstcon
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: (){
                        Fluttertoast.showToast(
                          msg: "Wrong",
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          gravity: ToastGravity.SNACKBAR,
                        );
                        setState(() {
                          Yourscore--;
                        });

                      },
                      child: Container(
                        child: Column(
                          children: [
                            //circle
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Text('C', textAlign: TextAlign.center, style: TextStyle(
                                          color: Color.fromRGBO(252, 249, 249, 1),
                                          fontFamily: 'Ubuntu',
                                          fontSize: 25,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),)

                                    ],
                                  ),
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color : Colors.deepOrange,
                                    borderRadius : BorderRadius.circular(80),
                                  )
                              ),
                            ),
                            //textoption
                            Text('Http Sync', textAlign: TextAlign.center, style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Ubuntu',
                                fontSize: 20,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1
                            ),)

                          ],
                        ),
                        width: 150,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color : Color.fromRGBO(252, 249, 249, 1),
                        ),

                      ),
                    ),
                  ),
                  //second con
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: (){
                        Fluttertoast.showToast(
                          msg: "Wrong",
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          gravity: ToastGravity.SNACKBAR,
                        );
                        setState(() {
                          Yourscore--;
                        });

                      },
                      child: Container(
                        child: Column(
                          children: [
                            //circle
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Text('D', textAlign: TextAlign.center, style: TextStyle(
                                          color: Color.fromRGBO(252, 249, 249, 1),
                                          fontFamily: 'Ubuntu',
                                          fontSize: 25,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),)

                                    ],
                                  ),
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color : Colors.green,
                                    borderRadius : BorderRadius.circular(80),
                                  )
                              ),
                            ),
                            //textoption
                            Text('Validator', textAlign: TextAlign.center, style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Ubuntu',
                                fontSize: 20,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1
                            ),)

                          ],
                        ),
                        width: 150,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color : Color.fromRGBO(252, 249, 249, 1),
                        ),

                      ),
                    ),
                  ),


                ],
              ),


            ],
          ),
        ),
      ),




    drawer: Drawer(),

    );
  }
}



