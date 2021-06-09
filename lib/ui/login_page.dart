import 'package:SuperHelper/core/cubit/auth_cubit.dart';
import 'package:SuperHelper/widgets/button_base.dart';
import 'package:SuperHelper/widgets/input_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  AuthCubit authCubit = AuthCubit();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocListener(
        cubit: authCubit,
        listener: (context, state) {},
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
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height - 110,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 75, bottom: 50),
                        child: Text(
                          "Log In",
                          style: TextStyle(fontSize: 36),
                        ),
                      ),
                      InputBase(
                        controller: TextEditingController(),
                        isPassword: false,
                        label: "Email",
                        placeholder: "Example: budi_santoso@gmail.com",
                      ),
                      InputBase(
                        controller: TextEditingController(),
                        isPassword: true,
                        label: "Password",
                        placeholder: "Example: ahsdfju21@fsj",
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        child: Text(
                          "Forgot password?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 14,
                              color: Colors.black54),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 75),
                        child: ButtonBase(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginPage()));
                          },
                          name: "Log In",
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 25),
                        child: Text(
                          "Don't have an account yet? Register now, it's free!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 14,
                              color: Colors.black54,
                              decoration: TextDecoration.underline),
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
      ),
    );
  }
}
