import 'package:flutter/material.dart';

class ButtonBase extends StatelessWidget {
  final Function onTap;
  final String name;

  const ButtonBase({Key key, this.onTap, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Container(
        width: 150,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff750BA1), Color(0xffB13A3A)],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          this.name,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
