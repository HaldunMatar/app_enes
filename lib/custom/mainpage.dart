import 'package:app_enes/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // height: 100,
        // color: Color.fromARGB(255, 88, 219, 95),
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "الصفحة الرئيسية ",
            style: TextStyle(
                color: COLOR_FONT, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        FlatButton(
          onPressed: null,
          child: Row(
            children: [
              Text('إضاقة دورات', style: TextStyle(color: COLOR_FONT)),
              Icon(
                Icons.add,
                color: COLOR_FONT,
                size: 20.0,
              )
            ],
          ),
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: COLOR_FONT, width: 1, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(10)),
        ),
      ],
    );
  }
}
