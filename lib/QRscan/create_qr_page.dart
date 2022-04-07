import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GeneratePage extends StatefulWidget {
@override
_GeneratePageState createState() => _GeneratePageState();
}

class _GeneratePageState extends State<GeneratePage> {

String qrData="https://github.com/ChinmayMunje";
final qrdataFeed = TextEditingController();
@override
Widget build(BuildContext context) {
	return Scaffold(
	//Appbar having title
	appBar: AppBar(
    backgroundColor: Colors.black,
		title: Center(child: Text("Generate QR Code")),
	),
	body: Container(
		padding: EdgeInsets.all(20),
		child: SingleChildScrollView(
		
		//Scroll view given to Column
		child: Column(
			mainAxisAlignment: MainAxisAlignment.center,
			crossAxisAlignment: CrossAxisAlignment.stretch,
			children: [
			QrImage(data: qrData),
			SizedBox(height: 20),
			Text("Generate QR Code",style: TextStyle(fontSize: 20),),
			
			//TextField for input link
			TextField(
				decoration: InputDecoration(
				hintText: "Enter your link here..."
				),
			),
			Padding(
				padding: const EdgeInsets.all(8.0),
				//Button for generating QR code
				child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    )) ,
     backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                
                      ),
					onPressed: () async {
					//a little validation for the textfield
					if (qrdataFeed.text.isEmpty) {	
						setState(() {
						qrData = "";
						});
					} else {
						setState(() {
						qrData = qrdataFeed.text;
						});
					}
					},
				//Title given on Button
					child: Text("Generate QR Code",style: TextStyle(color: Colors.black),),
				
				),
			),
			],
		),
		),
	),
	);
}
}
