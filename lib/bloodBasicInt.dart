import 'package:flutter/material.dart';

class second_bg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
  appBar: AppBar(
    title:Text('Blood Groups',style: TextStyle(color:Colors.white,),),
    centerTitle:true,
    backgroundColor:Colors.redAccent,
    ),
  
  backgroundColor: Colors.red[150],
  
  body: Row(
    mainAxisAlignment : MainAxisAlignment.center,
    children: <Widget>[
    Column(
    mainAxisAlignment : MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    
    SizedBox(height : 30),
   
    ClipRRect(
    borderRadius: BorderRadius.circular(22.0),
    child:
    GestureDetector(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => second_bg_abo()),);
                },
                child: Image.asset('assets/ABOSystem.jpeg',
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
                Navigator.push(context, MaterialPageRoute(builder:(context) => second_bg_han()),);
                },
                child: Image.asset('assets/Hanti.jpeg',
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
                Navigator.push(context, MaterialPageRoute(builder:(context) => second_bg_duf()),);
                },
                child: Image.asset('assets/Duff.jpeg',
                                    height: 150.0,
                                    width: 150.0,
                                    fit: BoxFit.cover,
                                  ),
   
                  ), 
     ),

    
    SizedBox(height : 30),
    
    ]),
 
    SizedBox(width:30),

    Column(
    mainAxisAlignment : MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    
    SizedBox(height : 30),
   
    ClipRRect(
    borderRadius: BorderRadius.circular(22.0),
    child:
    GestureDetector(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => second_bg_rh()),);
                },
                child: Image.asset('assets/RH.jpeg',
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
                Navigator.push(context, MaterialPageRoute(builder:(context) => second_bg_kel()),);
                },
                child: Image.asset('assets/kell.jpeg',
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
                Navigator.push(context, MaterialPageRoute(builder:(context) => second_bg_chart()),);
                },
                child: Image.asset('assets/chartblood.jpeg',
                                    height: 150.0,
                                    width: 150.0,
                                    fit: BoxFit.cover,
                                  ),
   
                  ), 
     ),

    SizedBox(height : 30),
   

    
    ])  
    
    ]
) ,
);
  }
}


class second_bc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
  appBar: AppBar(
    title:Text('Blood Components',style: TextStyle(color:Colors.white,),),
    centerTitle:true,
    backgroundColor:Colors.redAccent,
    ),
  
  backgroundColor: Colors.red[150],
  
  body: Row(
    mainAxisAlignment : MainAxisAlignment.center,
    children: <Widget>[
    Column(
    mainAxisAlignment : MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    
    SizedBox(height : 30),
    
    ClipRRect(
    borderRadius: BorderRadius.circular(22.0),
    child:
    GestureDetector(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => second_bc_pl()),);
                },
                child: Image.asset('assets/plate.jpeg',
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
                Navigator.push(context, MaterialPageRoute(builder:(context) => second_bc_plas()),);
                },
                child: Image.asset('assets/plasma.jpeg',
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
                Navigator.push(context, MaterialPageRoute(builder:(context) => second_bc_cel()),);
                },
                child: Image.asset('assets/cells.jpeg',
                                    height: 150.0,
                                    width: 150.0,
                                    fit: BoxFit.cover,
                                  ),
   
                  ), 
     ),


     SizedBox(height : 30),
   
   ], 
),]
) ,
);
  }
}


class second_he extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
  appBar: AppBar(
    title:Text('Hematological Terms',style: TextStyle(color:Colors.white,),),
    centerTitle:true,
    backgroundColor:Colors.redAccent,
    ),
  
backgroundColor: Colors.red[120],
body:
SingleChildScrollView(
child:
 Container(
    child: new Text(
      "\nAlbumin:	a simple water-soluble protein found in many animal tissues and liquids\n\n Antibody	:protein that helps destroy pathogens\n\n, Anticoagulant:	medicine that prevents or retards the clotting of blood\n\nAntigen:	any substance (as a toxin or enzyme) that stimulates the production of antibodies\n\n Basophil:	a white blood cell with granules that stain with basic dyescoagulation	blood clotting\n\nDiapedesis	:passage of blood cells (especially white blood cells) through intact capillary walls and into the surrounding tissue\n\nEosinophil:	a white blood cell that stains with certain dyes\n\nErythrocyte: a mature blood cell that contains hemoglobin to carry oxygen to the bodily tissues\n\nErythropoiesis :the process of producing red blood cells by the stem cells in the bone marrow\n\nFibrin: a white insoluble fibrous protein formed by the action of thrombin on fibrinogen when blood clots\n\nFibrinogen: a protein present in blood plasma\n\nHemoglobin:	a hemoprotein composed of globin and heme that gives red blood cells their characteristic color\n\nHemolysis:	breakdown of the red blood cell membrane\n\nHeparin:	a polysaccharide produced in basophils (especially in the lung and liver) and that inhibit the activity of thrombin in coagulation of the blood\n\n",
     textDirection: TextDirection.ltr,
      style: new TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.pink,
      ),
    ),
  ) , 
)
);
  }
}

class second_bg_abo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
  appBar: AppBar(
    title:Text('ABO System',style: TextStyle(color:Colors.white,),),
    centerTitle:true,
    backgroundColor:Colors.redAccent,
    ),
  
backgroundColor: Colors.red[120],
body:
 Container(
    child: new Text(
     '\nAmong the 33 systems, ABO remains the most important in transfusion and transplantation since any person above the age of 6 months possess clinically significant anti-A and/or anti-B antibodies in their serum. Blood group A contains antibody against blood group B in serum and vice-versa, while blood group O contains no A/B antigen but both their antibodies in serum.',
      textDirection: TextDirection.ltr,
      style: new TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.pink,
      ),
    ),
  ) , 
)
;
  }
}

class second_bg_rh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
  appBar: AppBar(
    title:Text('Rheus System',style: TextStyle(color:Colors.white,),),
    centerTitle:true,
    backgroundColor:Colors.redAccent,
    ),
  
backgroundColor: Colors.red[120],
body:
 Container(
    child: new Text(
      '\nRhesus-system is the second most important blood group system after ABO.Currently, the Rh-system consists of 50 defined blood group antigens out of which only five are important. RBC surface of an individual may or may not have a Rh factor or immunogenic D-antigen. Accordingly, the status is indicated as either Rh-positive (D-antigen present) or Rh-negative (D-antigen absent). In contrast to the ABO system, anti-Rh antibodies are, normally, not present in the blood of individuals with D-negative RBCs, unless the circulatory system of these individuals has been exposed to D-positive RBCs. These immune antibodies are immunoglobulin G (IgG) in nature and hence, can cross the placenta. Prophylaxis is given against Rh immunization using anti-D Ig for pregnant Rh-negative mothers who have given birth to Rh-positive child.',
      textDirection: TextDirection.ltr,
      style: new TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.pink,
      ),
    ),
  ) , 
)
;
  }
}



class second_bg_han extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
  appBar: AppBar(
    title:Text('H antigen',style: TextStyle(color:Colors.white,),),
    centerTitle:true,
    backgroundColor:Colors.redAccent,
    ),
  
backgroundColor: Colors.red[120],
body:
 Container(
    child: new Text(
      '\nH-antigen is the precursor to the ABO blood group antigens. It is present in all RBCs irrespective of the ABO system. Persons with the rare Bombay phenotype are homozygous for the H gene (HH), do not express H-antigen on their RBCs. As H-antigen acts as precursor, its absence means the absence of antigen A and B. However, the individuals produce isoantibodies to H-antigen as well as to antigens A and B.',
      textDirection: TextDirection.ltr,
      style: new TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.pink,
      ),
    ),
  ) , 
)
;
  }
}


class second_bg_kel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
  appBar: AppBar(
    title:Text('Kell System',style: TextStyle(color:Colors.white,),),
    centerTitle:true,
    backgroundColor:Colors.redAccent,
    ),
  
backgroundColor: Colors.red[120],
body:
 Container(
    child: new Text(
      '\nThese erythrocyte antigens are the third most potent immunogenic antigen after ABO and Rh system, and are defined by an immune antibody, anti-K. It was first noticed in the serum of Mrs. Kellacher. She reacted to the erythrocytes of her newborn infant resulting in hemolytic reactions. Since then 25 Kell antigens have been discovered. Anti-K antibody causes severe hemolytic disease of the fetus and newborn (HDFN) and haemolytic transfusion reactions (HTR).',
      textDirection: TextDirection.ltr,
      style: new TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.pink,
      ),
    ),
  ) , 
)
;
  }
}

class second_bg_duf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
  appBar: AppBar(
    title:Text('Duffy System',style: TextStyle(color:Colors.white,),),
    centerTitle:true,
    backgroundColor:Colors.redAccent,
    ),
  
backgroundColor: Colors.red[120],
body:
 Container(
    child: new Text(
      '\nDuffy-antigen was first isolated in a patient called Duffy who had haemophilia. It is also known as Fy glycoprotein and is present in the surface of RBCs. It is a nonspecific receptor for several chemokines and acts as a receptor for human malarial parasite, Plamodium vivax. Antigens Fya and Fyb on the Duffy glycoprotein can result in four possible phenotypes, namely Fy(a+b−), Fy(a+b+), Fy(a−b+), and Fy(a−b−). The antibodies are IgG subtypes and can cause HTR.',
      textDirection: TextDirection.ltr,
      style: new TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.pink,
      ),
    ),
  ) , 
)
;
  }
}

class second_bg_chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
  appBar: AppBar(
    title:Text('Blood Group Chart',style: TextStyle(color:Colors.white,),),
    centerTitle:true,
    backgroundColor:Colors.redAccent,
    ),
  
backgroundColor: Colors.red[120],
body:
Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
  Container(
   child: Image.asset('assets/chart.jpg'),
  ) , 
]
),
)
;
  }
}


class second_bc_pl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
  appBar: AppBar(
    title:Text('Platelets',style: TextStyle(color:Colors.white,),),
    centerTitle:true,
    backgroundColor:Colors.redAccent,
    ),
  
backgroundColor: Colors.red[120],
body:
 Container(
    child: new Text(
      '\nPlatelets, also called thrombocytes are a component of blood whose function (along with the coagulation factors) is to react to bleeding from blood vessel injury by clumping, thereby initiating a blood clot. Platelets have no cell nucleus: they are fragments of cytoplasm that are derived from the megakaryocytes of the bone marrow, and then enter the circulation. Circulating unactivated platelets are biconvex discoid (lens-shaped) structures. Activated platelets have cell membrane projections covering their surface. Platelets are found only in mammals, whereas in other animals (e.g. birds, amphibians) thrombocytes circulate as intact mononuclear cells.',
      textDirection: TextDirection.ltr,
      style: new TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.pink,
      ),
    ),
  ) , 
)
;
  }
}

class second_bc_plas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
  appBar: AppBar(
    title:Text('Plasma',style: TextStyle(color:Colors.white,),),
    centerTitle:true,
    backgroundColor:Colors.redAccent,
    ),
  
backgroundColor: Colors.red[120],
body:
 Container(
    child: new Text(
     '\nBlood plasma is a yellowish liquid component of blood that holds the blood cells in whole blood in suspension. It is the liquid part of the blood that carries cells and proteins throughout the body. It makes up about 55% of the total blood volume of body. It is the intravascular fluid part of extracellular fluid.',
      textDirection: TextDirection.ltr,
      style: new TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.pink,
      ),
    ),
  ) , 
)
;
  }
}

class second_bc_cel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
  appBar: AppBar(
    title:Text('Blood Cells',style: TextStyle(color:Colors.white,),),
    centerTitle:true,
    backgroundColor:Colors.redAccent,
    ),
  
backgroundColor: Colors.red[120],
body:
 Container(
    child: new Text(
      '\n.Red blood cells or erythrocytes, primarily carry oxygen and collect carbon dioxide through the use of haemoglobin. Haemoglobin is an iron-containing protein that gives red blood cells their color and facilitates transportation of oxygen from the lungs to tissues and carbon dioxide from tissues to the lungs to be exhaled \n White blood cells or leukocytes, are cells of the immune system involved in defending the body against both infectious disease and foreign materials',
      textDirection: TextDirection.ltr,
      style: new TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.pink,
      ),
    ),
  ) , 
)
;
  }
}

