import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/userSignUp.dart';
import 'package:untitled/agentSignUp.dart';


class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.activeBlue,
        title: Text("SIGN UP PAGE", style: TextStyle(color: Colors.white.withOpacity(0.9)),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 150),

              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Text('Please Choose One',style: TextStyle(
                fontSize: 20,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.bold,
            ), ),
              ),


        SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
            child: RawMaterialButton(

              constraints: BoxConstraints(minHeight: 45, minWidth: 250),
              fillColor: Colors.blueAccent,
              hoverColor: Colors.grey,
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserSignUp()),
              );},
              shape: StadiumBorder(),
              child: Text('User Sign Up',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),),

            ),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
            child: RawMaterialButton(

              constraints: BoxConstraints(minHeight: 45, minWidth: 250),
              fillColor: Colors.blueAccent,
              hoverColor: Colors.grey,
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AgentSignUp()),
              );},
              shape: StadiumBorder(),
              child: Text('Agency Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),),

            ),
          ),
        ],
      ),
    );
  }
}

