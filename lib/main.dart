import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/LoginPage.dart';
void main(){
runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())
            )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.white,
      alignment: Alignment(0.7, -0.5),
      child: Stack(
        alignment: Alignment(0.0, 1.0),
        children: <Widget>[
          Image.asset('assets/images/fs.png'),


        ],
      ),

    );
  }
}
