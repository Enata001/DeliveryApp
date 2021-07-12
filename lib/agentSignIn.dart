import 'package:flutter/material.dart';

class AgentSignIn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 300.0,
              height: 220.0,
              child: Image.asset('assets/images/fs.png'),
            )
          ],
        ),
      ),
    );
  }
}
