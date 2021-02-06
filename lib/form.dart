import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:geolocator/geolocator.dart';
  
class formm extends StatefulWidget {
  @override
  _formmState createState() => _formmState();
}

class _formmState extends State<formm> {

final _formKey = GlobalKey<FormState>();
final databaseRef = FirebaseDatabase.instance.reference();
int choice ;
String name = '';  
String age;
int sex;
String mob_no ;
String bgroup = '';
double lat ;
double long;

  @override

  void createRecord(int ch, String nme , String age , int sex ,String group , String mno ,double lat ,double long){
  databaseRef.child('user').push().set({
    'Name': nme,
    'Age':age,
    'Sex':sex,
    'Blood group': group,
    'Mobile number':mno,
    'Choice':ch,
    'Latitude':lat,
    'Longitude':long,
});
}

void _getLocation() async {
    
var currentLocation = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
  lat = currentLocation.latitude;
  long = currentLocation.longitude;
  print(lat);
  }


  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
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
    



  body: Container(
    padding: EdgeInsets.symmetric(vertical:20,horizontal:50),
    
    child:Form(
    key: _formKey,
    
    
    child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [
                SizedBox(height :30 ),
                Expanded(
                child:   ListTile(
                  dense: true,
                  title: Text(
                    "Donate / Request",
                  style: TextStyle(
                 fontWeight: FontWeight.bold,
                  ),
                  ),
                subtitle: DropdownButtonFormField<int>( // into this
                  decoration: InputDecoration(
                    isDense: true,
                  hasFloatingPlaceholder: true,
                    labelText: 'I want to',
                    contentPadding: EdgeInsets.symmetric(vertical: 9),
                  ),
                        items: [
                  DropdownMenuItem<int>(
                                  value: 1,
                                  child: Text(
                                    "donate blood",
                                  ),
                                ),
                  DropdownMenuItem<int>(
                                  value: 2,
                                  child: Text(
                                    "request blood",
                                  ),
                                ),
                ],
                onChanged: (value) {
                                setState(() {
                                  choice = value;
                                });
                              },
                ),),),

                
                new Expanded(
                    child: ListTile(
                      dense: true,
                      title: Text(
                        "Name",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        
                      ),
                      subtitle: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Enter your name',
                            
                        ),
                        
                        onChanged: (value) {
                                setState(() {
                                  name = value;
                                });
                              },
               
                      ),
                      
                      isThreeLine: true,
                      
                    )
                ),

                new Expanded(
                    child: ListTile(
                      dense: true,
                      title: Text(
                        "Age",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Enter your age'
                        ),
                        onChanged: (value) {
                                setState(() {
                                  age = value ;
                                });
                              },
               
                      ),
                      isThreeLine: true,
                    )

                ),
              Expanded(
        
                child: ListTile(
                  dense: true,
                  title: Text(
                    "Sex",
                  style: TextStyle(
                 fontWeight: FontWeight.bold,
                  ),
                  ),
                subtitle: DropdownButtonFormField<int>( // into this
                  decoration: InputDecoration(
                    isDense: true,
                  hasFloatingPlaceholder: true,
                    labelText: 'Select your sex',
                    contentPadding: EdgeInsets.symmetric(vertical: 9),
                  ),
                        items: [
                  DropdownMenuItem<int>(
                                  value: 1,
                                  child: Text(
                                    "Male",
                                  ),
                                ),
                  DropdownMenuItem<int>(
                                  value: 2,
                                  child: Text(
                                    "Female",
                                  ),
                                ),
                ],
                onChanged: (value) {
                                setState(() {
                                  sex = value;
                                });
                              },
                ),),),

              Expanded(
        
                child: ListTile(
                  dense: true,
                  title: Text(
                    "Blood Group",
                  style: TextStyle(
                 fontWeight: FontWeight.bold,
                  ),
                  ),
                subtitle: DropdownButtonFormField<int>( // into this
                  decoration: InputDecoration(
                    isDense: true,
                  hasFloatingPlaceholder: true,
                    labelText: 'Select blood group',
                    contentPadding: EdgeInsets.symmetric(vertical: 9),
                  ),
                        items: [
                  DropdownMenuItem<int>(
                                  value: 1,
                                  child: Text(
                                    "A+",
                                  ),
                                ),
                  DropdownMenuItem<int>(
                                  value: 2,
                                  child: Text(
                                    "B+",
                                  ),
                                ),
                DropdownMenuItem<int>(
                                  value: 3,
                                  child: Text(
                                    "AB+",
                                  ),
                                ),
                DropdownMenuItem<int>(
                                  value: 4,
                                  child: Text(
                                    "O+",
                                  ),
                                ),
                DropdownMenuItem<int>(
                                  value: 5,
                                  child: Text(
                                    "O-",
                                  ),
                                ),
                
                ],
                onChanged: (value) {
                                setState(() {
                                     if(value ==1)
                                     {
                                       bgroup = 'A+';
                                     }
                                      if(value ==2)
                                     {
                                       bgroup = 'B+';
                                     }
                                      if(value ==3)
                                     {
                                       bgroup = 'AB+';
                                     }
                                      if(value ==4)
                                     {
                                       bgroup = 'O+';
                                     }
                                      if(value ==5)
                                     {
                                       bgroup = 'O-';
                                     }

                                });
                              },
                ),),),
             
             
                new Expanded(
                    child: ListTile(
                      dense: true,
                      title: Text(
                        "Mobile number",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Enter your mobile numnber'
                        ),
                        onChanged: (value) {
                                setState(() {
                                  mob_no = value ;
                                });
                              },
               
                      ),
                      isThreeLine: true,
                    )

                ),
             FlatButton.icon(
               onPressed: (){_getLocation();}
,
              icon: Icon(Icons.add_location), 
              label: Text('Add location'),
              )
             , 
             RaisedButton(
             color: Colors.redAccent,
             child: Text('Submit',style:TextStyle(color:Colors.white)),
             onPressed: ()
             async{
                if(_formKey.currentState.validate())
                {
                     createRecord(choice, name , age , sex ,bgroup , mob_no,lat,long);
                }
            }
            
              )  ,

            

SizedBox(height :30 ),
          ],),
     ) 
     )
     
     );
 }
}


