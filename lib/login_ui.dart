import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = Color(0xFF5D5167).withOpacity(0.5);
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
          child: Card(
            elevation: 1,
            color: Color(0xFF251734).withOpacity(0.5),
            margin: EdgeInsets.all(16),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(top: 18, bottom: 18),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(22),
                        topRight: Radius.circular(22),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'CUSTOMER LOGIN',
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(14, 10, 14, 10),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: 'Email ID',
                            prefixIcon: Icon(Icons.mail),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock),
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Remember me',
                              style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Color(0xFF5D5167),
                              ),
                            ),
                            Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w100,
                                color: Color(0xFF5D5167),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 12),
                        MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          elevation: 0,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 60, vertical: 8),
                          color: color,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
