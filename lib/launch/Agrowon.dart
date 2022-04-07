import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher_android/url_launcher_android.dart';
import 'package:flutter/material.dart';

launchURLApp() async {
  const url = 'https://www.agrowon.com/';
  if (await canLaunch(url)) {
    await launch(url, forceSafariVC: true, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}

class Agrowon extends StatefulWidget {
  const Agrowon({ Key? key }) : super(key: key);
  @override
  State<Agrowon> createState() => _AgrowonState();
}

class _AgrowonState extends State<Agrowon> {
  
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
              padding: EdgeInsets.only(top: 100 , left: 50 , ),
              height: 400,
              child: Image(
                image: AssetImage("images/Agro.jpg"),
                fit: BoxFit.contain,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left:60),
        child: new ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    )) ,
     backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                
                      ),
          onPressed: launchURLApp,
          child: new Text('Agrowon blog'),
        ),
        )
          ]
      ),
        )
      )
    );
    
  }
}