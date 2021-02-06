 import 'package:firebase_database/firebase_database.dart';
 import 'package:flutter/material.dart';
 import 'package:google_maps_flutter/google_maps_flutter.dart';
 import 'package:geolocator/geolocator.dart';
 import 'package:url_launcher/url_launcher.dart';
 import 'user1.dart';

 class gmap1 extends StatefulWidget {
   @override
   _gmap1State createState() => _gmap1State();
 }
 DatabaseReference ref = FirebaseDatabase.instance.reference();    

 
 class _gmap1State extends State<gmap1> {

   GoogleMapController _controller;
   Position position;
   Widget _child;
  final Map<String, Marker> _markers = {};

  List<Marker> _markers1 = [];

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
        _markers1.add(Marker(
          markerId: MarkerId(u.name),
          position: LatLng(u.lat, u.long),
          icon: BitmapDescriptor.defaultMarkerWithHue(
           (u.choice==1) ? BitmapDescriptor.hueGreen : BitmapDescriptor.hueBlue
        ),
        onTap: () {
      showModalBottomSheet(
          context: context,
          builder: (builder) {
            return Container(
              child: _markerInfo(u.name,u.bgroup,u.age,u.sex,u.mobile,u.choice),
            );
          });
    },
          ));
        //current location marker red
        //_getLocation();
        
        setState(() {
          print('length:${_markers.length}');
        });

      }

    });
    super.initState();
  }
  ListTile _markerInfo(String name,String bgroup,String age,int sex,String mobile,int choice) {
    /*return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.ac_unit),
          title: Text(name),
        )
      ],
    );*/
      String g = "female";
      if(sex==1)
      {
        g = "male";
      }
      //String c = "Donate";
       return ListTile(
              //children: [
               // ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: Text(name),
                  subtitle: Text("Blood Group : $bgroup \nAge : $age \nSex : $g",
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                  trailing: IconButton(icon: Icon(Icons.phone, color: Colors.greenAccent,), 
              onPressed: (){
                  launch("tel:$mobile");
              },),
                );
               /* Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),*/
               /* ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 1'),
                    ),
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 2'),
                    ),
                  ],
                ),*/
              //],
       //);
  }
  void _getLocation() async {
    Position currentLocation = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
    _markers1.add(Marker(
      markerId: MarkerId("curr_loc"),
      position: LatLng(currentLocation.latitude, currentLocation.longitude),
      infoWindow: InfoWindow(title: 'Your Location'),
  ));      
  }

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
    
    body: 
    GoogleMap(mapType: MapType.normal,  initialCameraPosition: CameraPosition(target: LatLng(19.3919, 72.8397),zoom:12,),
    markers: _markers1.toSet(),
     onMapCreated:(GoogleMapController controller){ _controller = controller;},
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: _getLocation,
        tooltip: 'Get Location',
        child: Icon(Icons.flag),
      ),      
      );    
   }
 }
 