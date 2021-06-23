import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
          child: Card(
            elevation: 1,
            color: Color(0xFF251734).withOpacity(0.5),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
            child: Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    // #5D5167
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFF5D5167).withOpacity(0.5),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(22),
                        topRight: Radius.circular(22),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'CUSTOMER LOGIN',
                        style: GoogleFonts.sourceSansPro(color: Colors.white),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Remember me'),
                            Text('Forgot Password?')
                          ],
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Text('LOGIN'),
                          elevation: 0,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 11),
                          color: Color(0xFF5D5167).withOpacity(0.5),
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
