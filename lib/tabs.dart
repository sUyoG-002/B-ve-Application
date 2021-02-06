import 'package:appp/gmap.dart';
import 'package:appp/home.dart';
import 'package:appp/mpp.dart';
import 'package:flutter/material.dart';
import 'form.dart';
import 'list.dart';
int curr_index = 0;


class second extends StatefulWidget {
  @override
  _secondState createState() => _secondState();
}

class _secondState extends State<second> {
  
   List<Widget> _widgetOptions = <Widget>[
  first(),
  gmap1(),
  formm(),
  ldata()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

  body:_widgetOptions.elementAt(curr_index),
  
  bottomNavigationBar:
  BottomNavigationBar(
    currentIndex: curr_index,
    fixedColor: Colors.redAccent,
    //backgroundColor: Colors.blueAccent,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home,),title: Text('Home'),),
      BottomNavigationBarItem(icon: Icon(Icons.local_hospital,),title: Text('GMap'),),
      BottomNavigationBarItem(icon: Icon(Icons.notifications,),title: Text('Form'),),
      BottomNavigationBarItem(icon: Icon(Icons.list,),title: Text('List'),),
    ],

    onTap: (index){
      setState(() {
        curr_index = index;
      });
            },
        )



      );
  
  }
}