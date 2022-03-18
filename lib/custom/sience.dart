import 'package:flutter/cupertino.dart';

import '../constants.dart';

class Sience extends StatelessWidget {
  const Sience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //  height: 200,
      //color: Color.fromARGB(255, 88, 182, 219),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "المواد العلمية ",
          textAlign: TextAlign.left,
          style: TextStyle(
              color: COLOR_FONT, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
