import 'dart:ui';

import 'package:SuperHelper/ui/login_page.dart';
import 'package:SuperHelper/ui/register_page.dart';
import 'package:SuperHelper/widgets/button_base.dart';
import 'package:flutter/material.dart';

class EntryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 75),
              child: Image.asset('assets/superhelper.png'),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              child: Text(
                "One more step to access all the greatness.",
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: Text(
                "Let's login or register",
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonBase(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    name: "Login",
                  ),
                  ButtonBase(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegisterPage()));
                    },
                    name: "Register",
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Text(
                "By registering, I am aware and understand the Privacy Policy and Terms and Conditions.",
                textAlign: TextAlign.center,
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
