import 'package:flutter/material.dart';
import 'bloodBasicInt.dart';

class first extends StatelessWidget {
  // This widget is the root of your application.
  @override
  
  Widget build(BuildContext context) {
  
  return Scaffold(
  appBar: AppBar(
    title:Text('B+ve',style: TextStyle(color:Colors.white,),),
    centerTitle:true,
    backgroundColor:Colors.redAccent,
    ),
  drawer: Drawer(
    child:ListView(
      children: <Widget>[
        Container(
        height: 60,
        color:Colors.redAccent, 
         child: DrawerHeader(
          child: Text('B+ve',style: TextStyle(fontSize:20,color: Colors.white,),textAlign: TextAlign.center,),
        ),),
        ListTile(
          leading:Icon(Icons.message),
          title: Text('Message'),
          ),
        ListTile(
          leading:Icon(Icons.account_circle),
          title: Text('Sign in'),
          ),
        ListTile(
          leading:Icon(Icons.settings),
          title: Text('Settings'),
          )  
      ],
    )
  ),
  
  backgroundColor: Colors.red[150],
  
  body:
  Container(
   child:Row(
    mainAxisAlignment : MainAxisAlignment.center,
    children: <Widget>[
    Column(
    mainAxisAlignment : MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    
    SizedBox(height : 10),
    
    Container(
      child: Text('Blood Basics',textAlign:TextAlign.center ,style: TextStyle(fontSize:30,color:Colors.redAccent) ,),
    ),

    ClipRRect(
    borderRadius: BorderRadius.circular(22.0),
    child:
    GestureDetector(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => second_bg()),);
                },
                child: Image.asset('assets/bloodgroups.jpeg',
                                    height: 150.0,
                                    width: 150.0,
                                    fit: BoxFit.cover,
                                  ),
   
                  ), 
     ),


ClipRRect(
    borderRadius: BorderRadius.circular(22.0),
    child:
    GestureDetector(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => second_bc()),);
                },
                child: Image.asset('assets/compo.jpeg',
                                    height: 150.0,
                                    width: 150.0,
                                    fit: BoxFit.cover,
                                  ),
   
                  ), 
     ),


ClipRRect(
    borderRadius: BorderRadius.circular(22.0),
    child:
    GestureDetector(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => second_he()),);
                },
                child: Image.asset('assets/hema.jpeg',
                                    height: 150.0,
                                    width: 150.0,
                                    fit: BoxFit.cover,
                                  ),
   
                  ), 
     ),

     SizedBox(height : 10),
   
   ], 
),]
) ,),
      );
 
  }
}
