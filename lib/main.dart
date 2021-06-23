import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login UI Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.ralewayTextTheme(
          Theme.of(context).textTheme.apply(bodyColor: Colors.white),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginUI(),
    );
  }
}
