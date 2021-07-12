import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/agentSignIn.dart';



class AgentSignUp extends StatelessWidget {
  final emailTextController = TextEditingController();

  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.activeBlue,
        title: Text("AGENCY SIGN UP PAGE",
          style: TextStyle(color: Colors.white.withOpacity(0.9)),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 5,),
              Text('Please Enter Your Details', style: TextStyle(
                fontSize: 20,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10,),
              Container(
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey
                ),
                child: TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.account_circle, color: Colors.white,),
                    labelText: 'Agency Name',
                    hintText: 'Agency Name',
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
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey
                ),
                child: TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.account_circle, color: Colors.white,),
                    labelText: 'License Identification Number',
                    hintText: 'License Identification Number',
                    hintStyle: TextStyle(
                      fontFamily: 'Open Sans',
                      color: Color(0xFF455A64),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey
                ),
                child: TextFormField(
                  controller: emailTextController,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.mail_outline_rounded, color: Colors.white,),
                    labelText: 'E-mail',
                    hintText: 'E-mail',
                    hintStyle: TextStyle(
                      fontFamily: 'Open Sans',
                      color: Color(0xFF455A64),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(width: 350,
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
                    suffixIcon: Icon(Icons.remove_red_eye, color : Colors.white),
                    labelText: 'Enter password',
                    hintText: 'Enter password',
                    hintStyle: TextStyle(
                      fontFamily: 'Open Sans',
                      color: Color(0xFF455A64),
                      fontWeight: FontWeight.normal,

                    ),
                  ),
                ),
              ),SizedBox(height: 30,),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.contact_phone, color: Colors.white,),
                          border: InputBorder.none,
                          labelText: '+233',
                          labelStyle: TextStyle(
                            fontFamily: 'Open Sans',
                            color: Colors.black,
                            fontWeight: FontWeight.normal,

                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(width: 240,
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey
                    ),
                    child: TextFormField(

                      obscureText: false,
                      decoration: InputDecoration(

                        border: InputBorder.none,
                        labelText: 'Phone Contact',
                        hintStyle: TextStyle(
                          fontFamily: 'Open Sans',
                          color: Color(0xFF455A64),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              _List(),
              SizedBox(height: 30,),
              Container(
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey
                ),
                child: TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.location_city_rounded, color: Colors.white,),
                    labelText: 'City or Town',
                    hintText: 'City or Town',
                    hintStyle: TextStyle(
                      fontFamily: 'Open Sans',
                      color: Color(0xFF455A64),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),SizedBox(height: 30,),
              _Category(),
              SizedBox(height: 30,),
              Container(
                width: 350,height:100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.grey
                ),
                child: TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.info, color: Colors.white,),
                    hintText: 'Please add any additional info here',
                    hintStyle: TextStyle(
                      fontFamily: 'Open Sans',
                      color: Color(0xFF455A64),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),

              ElevatedButton(
                 onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AgentSignIn()),
                      );
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ),
              SizedBox(height: 20,)


            ],
          ),
        ),
      ),
    );
  }
}

class _List extends StatefulWidget {


  @override
  State<_List> createState() => _ListState();
}


class _ListState extends State<_List> {
  String dropdownValue = 'Select your Region';

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 350,height: 55,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(12.0),
      ),


      child: DropdownButton<String>(

        value: dropdownValue,

        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Colors.black, fontSize: 18),

        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['Select your Region','Ahafo', 'Ashanti', 'Bono', 'Bono East', 'Central', 'Eastern', 'Greater Accra', 'North East', 'Northern', 'Oti', 'Savannah', 'Upper East', 'Upper West', 'Volta', 'Western', ' Western North'].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child:  Row(children: [

              IconButton(
                icon: Icon(Icons.location_on),
                color: Colors.white, onPressed: () {  },
              ),

              Text(value),

            ]),
          );
        }).toList(),

      ),
    );

  }
}


class _Category extends StatefulWidget {


  @override
  State<_Category> createState() => _CategoryState();
}


class _CategoryState extends State<_Category> {
  String dropdownValue = 'Select a Range/Category';

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 350,height: 55,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(12.0),
      ),


      child: DropdownButton<String>(

        value: dropdownValue,

        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Colors.black, fontSize: 18),

        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['Select a Range/Category','Small Items()','Small to Large()','Small to Large()'].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child:  Row(children: [

              IconButton(
                icon: Icon(Icons.category_rounded),
                color: Colors.white, onPressed: () {  },
              ),

              Text(value),

            ]),
          );
        }).toList(),

      ),
    );
  }
}
