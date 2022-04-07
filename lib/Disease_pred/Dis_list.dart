import 'dart:ui';
import 'package:farmingo/Disease_pred/apple.dart';
import 'package:farmingo/Disease_pred/corn.dart';
import 'package:farmingo/Disease_pred/potato.dart';
import 'package:farmingo/Disease_pred/tomato.dart';
import 'package:flutter/material.dart';

class Dislist extends StatefulWidget {
  const Dislist({ Key? key }) : super(key: key);

  @override
  State<Dislist> createState() => _DislistState();
}

class _DislistState extends State<Dislist> {
PageController page = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Farmingo' , style: TextStyle(
         color: Colors.white,
         fontWeight: FontWeight.bold,
       ),
       ),
         backgroundColor: Colors.black,
        ),

      body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 60),
              height: 350,
              child: Image(
                image: AssetImage("images/predict.png"),
                fit: BoxFit.contain,
              ),
            ),
                SizedBox(height : 20),
                Container(
                
                  padding: EdgeInsets.only(left: 20 , right: 20),
              child: Text("How does the Predictor Works?\n  1.Click on the fruit for which you to predict the disease.\n 2.Click on take photo to take photos from camera\n  OR 3.click on take photo from galllery to take photo from gallery." , 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                height: 2,
                letterSpacing: 2,
                color:Colors.green, fontWeight: FontWeight.bold ),
                ),    
                )
          ],
        ),
      ),
      
      ),
   
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(100)),
            ),
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children:<Widget> [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/example.png"),
                 fit: BoxFit.scaleDown,
                 
                  ),
                borderRadius: BorderRadius.only(topRight: Radius.circular(100))
              ),
              child: Text('FARMINGO' , style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
              
            ),
            ListTile(
              title: const Text('Apple'),
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Apple(),
                  ),
            );
          },
        ),
  
   ListTile(
              title: const Text('Corn'),
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Corn(),
                  ),
            );
          },
            ),
            ListTile(
              title: const Text('Potato'),
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Potato(),
                  ),
            );
          },
            ),

            ListTile(
              title: const Text('Tomato'),
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => tomato(),
                  ),
            );
          },
            ),

          ],
        ),
      ),

      
    );
  }
}