import 'package:SuperHelper/widgets/button_base.dart';
import 'package:SuperHelper/widgets/input_base.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff750BA1), Color(0xffB13A3A)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/superhelper.png',
                        color: Colors.white,
                        alignment: Alignment.center,
                        width: 175,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height - 90,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 75, bottom: 50),
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 36),
                      ),
                    ),
                    InputBase(
                      controller: TextEditingController(),
                      isPassword: false,
                      label: "Your First Name",
                      placeholder: "Example: Budi",
                    ),
                    InputBase(
                      controller: TextEditingController(),
                      isPassword: false,
                      label: "Your Last Name",
                      placeholder: "Example: Santoso",
                    ),
                    InputBase(
                      controller: TextEditingController(),
                      isPassword: false,
                      label: "Email",
                      placeholder: "Example: budisantoso@gmail.com",
                    ),
                    InputBase(
                      controller: TextEditingController(),
                      isPassword: true,
                      label: "Password",
                      placeholder: "Example: ahsdfju21@fsj",
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: ButtonBase(
                        onTap: () {},
                        name: "Register",
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 100),
                      child: Text(
                        "Need Help?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
