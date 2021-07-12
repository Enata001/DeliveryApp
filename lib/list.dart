import 'package:flutter/material.dart';
import 'package:untitled/userSignUp.dart';
class _List extends StatefulWidget {


  @override
  State<_List> createState() => _ListState();
}


class _ListState extends State<_List> {
  String dropdownValue = 'Select your Region';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.keyboard_arrow_down_rounded),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.black, fontSize: 18),

      // underline: Container(height: 2, color: Colors.blueAccent, ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Select your Region','Ahafo', 'Ashanti', 'Bono', 'Bono East', 'Central', 'Eastern', 'Greater Accra', 'North East', 'Northern', 'Oti', 'Savannah', 'Upper East', 'Upper West', 'Volta', 'Western', ' Western North'].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),


    );
  }
}