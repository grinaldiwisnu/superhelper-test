import 'package:flutter/material.dart';

class InputBase extends StatelessWidget {
  final String label;
  final String placeholder;
  final TextEditingController controller;
  final bool isPassword;

  const InputBase(
      {Key key, this.label, this.placeholder, this.controller, this.isPassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          alignment: Alignment.centerLeft,
          child: Text(
            this.label,
            textAlign: TextAlign.start,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff750BA1), Color(0xffB13A3A)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
              ),
              borderRadius: BorderRadius.circular(8)),
          child: Container(
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: TextFormField(
              controller: this.controller,
              maxLines: 1,
              obscureText: this.isPassword ?? false,
              textAlignVertical: TextAlignVertical.center,
              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
              decoration: InputDecoration(
                hintText: this.placeholder,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
