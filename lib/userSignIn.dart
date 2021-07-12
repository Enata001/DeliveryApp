import 'package:flutter/material.dart';
import 'package:untitled/FromMe.dart';
import 'package:untitled/ToMe.dart';


class UserSignIn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello User, ',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                  fontFamily: 'Geeza Pro'
              ),),
            Container(
              width: 250.0,
              height: 220.0,
              child: Image.asset('assets/images/avatar.png'),
            ),
            SizedBox(height:50),

            Text('What do you want to do?',
                  style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  fontFamily: 'Geeza Pro'
              ),),
            SizedBox(height: 20,),
            Container(width: 300,height: 50,
              child: RawMaterialButton(

                fillColor: Colors.blueAccent,
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ToMe()),
                );},
                shape: StadiumBorder(),
                child: Text('Deliver To Me',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),),
              ),
            ),
            SizedBox(height: 30,),
            Container(width: 300,height: 50,
              child: RawMaterialButton(

                fillColor: Colors.blueAccent,
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FromMe()),
                );},
                shape: StadiumBorder(),
                child: Text('Send From Me',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),),
              ),
            ),
            SizedBox(height: 30,),
            Container(width: 300,height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blueAccent,
              ),

              child: Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    RawMaterialButton(

                      onPressed: () {},
                      child: Text('View Transaction History',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),),
                    ),
                    SizedBox(width: 5,),
                    Icon(Icons.insert_chart_rounded, color: Colors.white,),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}