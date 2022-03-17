import 'package:app_enes/main.dart';
import 'package:flutter/material.dart';

import '../custom/listbook.dart';
import '../custom/mainpage.dart';
import '../custom/qurancard.dart';
import '../custom/sience.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 219, 184, 88),
      child: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 219, 184, 88),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mainpage(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: QuranCard(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Sience(),
                ),
                LisBook()
              ],
            ),
          )
        ],
      ),
    ); //main contatuner
  }
}
