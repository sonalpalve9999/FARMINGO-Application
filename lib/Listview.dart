import 'dart:ui';
import 'package:farmingo/Videocall/videohome.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:farmingo/Blog/blog_home.dart';
import 'package:farmingo/Disease_pred/Dis_list.dart';
import 'package:farmingo/HomePage.dart';
import 'package:farmingo/PostTendor/Company.dart';
import 'package:farmingo/PostTendor/CompanyUser.dart';
import 'package:farmingo/QRscan/scan_qr_page.dart';
import 'package:farmingo/launch/Agrowon.dart';
import 'package:farmingo/pages/edit_description.dart';
import 'package:farmingo/pages/edit_email.dart';
import 'package:farmingo/SignUp.dart';
import 'package:farmingo/Start.dart';
import 'package:farmingo/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'QRscan/create_qr_page.dart';


class Listview extends StatefulWidget {
  const Listview({ Key? key }) : super(key: key);

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
PageController page = PageController();
 final FirebaseAuth _auth = FirebaseAuth.instance;
signOut() async {
    _auth.signOut();

    final googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
  }


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
      body: const Center(
        child: Text('My Page!'),
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
              title: const Text('Profile'),
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                  ),
            );
          },
        ),
  
   ListTile(
              title: const Text('Scan QR'),
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Scan(),
                  ),
            );
          },
            ),
            ListTile(
              title: const Text('Market'),
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => bloghome(),
                  ),
            );
          },
            ),

            ListTile(
              title: const Text('Generate QR'),
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => GeneratePage(),
                  ),
            );
          },
            ),

            ListTile(
              title: const Text('Agrowon Blogs'),
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Agrowon(),
                  ),
            );
          },
            ),
            ListTile(
              title: const Text('Predict Disease'),
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Dislist(),
                  ),
            );
          },
        ),
        ListTile(
              title: const Text('VideoCall'),
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => VideoHome(),
                  ),
            );
          },
        ),
        ListTile(
              title: const Text('Signout'),
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => signOut(),
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