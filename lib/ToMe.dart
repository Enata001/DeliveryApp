import 'package:flutter/material.dart';

class ToMe extends StatelessWidget {
  const ToMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

      title:Text('TO ME') ,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
          children: [

            SizedBox(height: 10,),
            _Category(),
            SizedBox(height: 20,),
            _Items(),
          ],

          ),
        ),
      ),
    );
  }
}
class _Category extends StatefulWidget {


  @override
  State<_Category> createState() => _CategoryState();
}


class _CategoryState extends State<_Category> {
  String dropdownValue = 'Select Item Category';

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
        items: <String>['Select Item Category','Groceries','Home and Office Supplies','Fashion','Electronics','Others'].map<DropdownMenuItem<String>>((String value) {
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
class _Items extends StatefulWidget {


  @override
  State<_Items> createState() => _ItemState();
}


class _ItemState extends State<_Items> {
  String dropdownValue = 'Select Item Size';

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
        items: <String>['Select Item Size','Small Items()','Large()','Large()'].map<DropdownMenuItem<String>>((String value) {
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

