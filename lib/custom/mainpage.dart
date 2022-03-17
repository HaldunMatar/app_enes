import 'package:app_enes/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        // height: 100,
        // color: Color.fromARGB(255, 88, 219, 95),
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Main ",
            style: TextStyle(color: COLOR_ORANGE),
          ),
        ),
        FlatButton(
          onPressed: null,
          child: Text('Button', style: TextStyle(color: Colors.blue)),
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.blue, width: 1, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(50)),
        ),
      ],
    ));
  }
}
