import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'user1.dart';
import 'package:url_launcher/url_launcher.dart';

DatabaseReference ref = FirebaseDatabase.instance.reference();    

class ldata extends StatefulWidget {
  @override
  _ldataState createState() => _ldataState();
}

class _ldataState extends State<ldata> {

  List<User1> lstdata = [];

   @override
  void initState() {
    ref.child('user').once().then((DataSnapshot snap){
      var keys = snap.value.keys;
      var data = snap.value;
      for(var key in keys){
        User1 u =new User1(
          data[key]['Name'] ,
          data[key]['Blood group'],
          data[key]['Latitude'],
          data[key]['Longitude'],
          data[key]['Choice'],
          data[key]['Mobile number'],
          data[key]['Sex'],
          data[key]['Age']
          );
        lstdata.add(u);
        setState(() {
          print('length:${lstdata.length}');
        });

      }

    });
    super.initState();
  }

  
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
  
      body: Container(
        
      child:ListView.builder(itemCount: lstdata.length,itemBuilder:(_, index){
      return UI
      (lstdata[index].name ,
       lstdata[index].bgroup,
       lstdata[index].age,
       lstdata[index].sex,
       lstdata[index].mobile ,
       lstdata[index].choice,
       );
      }      

      ),),
    );
  }

  Widget UI(String name,String bgroup,String age,int sex,String mobile,int choice ){
    String g = "female";
      if(sex==1)
      {
        g = "male";
      }
    if (choice == 1) {
    return Card(
      elevation: 4,
            margin: EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ) ,
        
              
       child: ListTile(
                 title: Text('$name',style: TextStyle(fontSize: 18, color: Colors.green),),
                           
                  subtitle: Text("Blood Group : $bgroup \nAge : $age \nSex : $g",
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),              
                  trailing: IconButton(icon: Icon(Icons.phone, color: Colors.greenAccent,), 
              onPressed: (){
                  
                  launch("tel://$mobile");
              
              },),
            ) ,
            
      
    );}
    else
    return Card(
      elevation: 4,
            margin: EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ) ,
        
              
       child: ListTile(
                 title: Text('$name',style: TextStyle(fontSize: 18, color: Colors.red),),
                           
              subtitle: Text("Blood Group : $bgroup \nAge : $age \nSex : $g",
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
              trailing: IconButton(icon: Icon(Icons.phone, color: Colors.greenAccent,), 
              onPressed: (){
                  
                  launch("tel://$mobile");
              
              },),
            ) ,
            
      
    );
  }
}