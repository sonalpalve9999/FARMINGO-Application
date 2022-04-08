import 'package:farmingo/Blog/blog_home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWdget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.notoSerif().fontFamily,
      ),
      home: bloghome(),
    );
  }
}