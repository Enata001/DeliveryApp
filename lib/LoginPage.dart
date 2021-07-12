import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/signUp.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailTextController = TextEditingController();

  final passwordTextController = TextEditingController();

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          endDrawer: Drawer(
            elevation: 16,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                  ),
                  child: (Text('Drawer Heading')),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: CupertinoColors.activeBlue,
            iconTheme: IconThemeData(color: Colors.white),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 300.0,
                      height: 220.0,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Image.asset(
                        'assets/images/fs.png',
                      ),
                    ),
                  ),

                  Text(
                    'WELCOME USER,',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 24,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey
                    ),
                    child: TextFormField(
                      controller: emailTextController,
                      obscureText: false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.account_circle,color: Colors.white,),
                        hintText: 'E-mail or Username',
                        hintStyle: TextStyle(
                        fontFamily: 'Open Sans',
                        color: Color(0xFF455A64),
                        fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    decoration: BoxDecoration(
                      color:Colors.grey,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: TextFormField(
                      controller: passwordTextController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock, color: Colors.white,),
                        hintText: 'Enter password',
                        hintStyle: TextStyle(
                          fontFamily: 'Open Sans',
                          color: Color(0xFF455A64),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),SizedBox(height: 30,),
                  RawMaterialButton(
                    constraints: BoxConstraints(minWidth: size.width, minHeight: 50),
                    fillColor: Colors.blueAccent,
                    onPressed: () {},
                    shape: StadiumBorder(),
                    child: Text('Sign in',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),),
                  ),

                  SizedBox(height: 35),
                  Text(
                    'Forgot password?',
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 25,),
                  RawMaterialButton(
                      onPressed: () {},
                      fillColor: Colors.white70,
                      child: Row(

                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/search.png',
                            height: 48.0,
                          ),
                          SizedBox(height: 10),
                          Container(

                              padding: EdgeInsets.only(left: 10.0, right: 10.0),
                              child: Text(
                                "Sign in with Google",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      )),
                      SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          fontFamily: 'Open Sans',
                          color: Color(0xFFADADAD),
                          fontSize: 14,
                        ),
                      ),
                      RawMaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpPage()),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 1.5,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
