import 'dart:ui';
import 'package:flutter/material.dart';

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = Color(0xFF5D5167).withOpacity(0.5);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Colors.red, Colors.blue],
          ),
        ),
        child: Center(
          child: Card(
            elevation: 1,
            color: Color(0xFF251734).withOpacity(0.5),
            margin: EdgeInsets.all(16),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: FittedBox(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(top: 18, bottom: 18),
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'CUSTOMER LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.5,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 10, 16, 20),
                      child: Column(
                        children: [
                          CustomTextField(
                              labelText: 'Email ID', icon: Icons.mail),
                          CustomTextField(
                              labelText: 'Password', icon: Icons.lock),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(color: color),
                                    child: Icon(Icons.done,
                                        color: Colors.grey[400], size: 14),
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    'Remember me',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[600],
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[600],
                                    fontSize: 13),
                              )
                            ],
                          ),
                          SizedBox(height: 18),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 60, vertical: 10),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[Colors.grey[700]!, color],
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String labelText;
  final IconData icon;
  const CustomTextField({Key? key, required this.labelText, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color textfield = Colors.grey[600]!;
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        labelText: labelText,
        contentPadding: EdgeInsets.only(left: 8, right: 8),
        labelStyle: TextStyle(color: textfield, fontSize: 14),
        prefixIcon: Icon(icon, color: textfield),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: textfield),
        ),
      ),
    );
  }
}
