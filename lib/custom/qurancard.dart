import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class QuranCard extends StatelessWidget {
  const QuranCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //  height: 200,
      // color: Color.fromARGB(255, 219, 88, 121),
      child: Card(
        child: InkWell(
          // splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Icon(
                        Icons.call,
                        size: 20.0,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('دورة تلاوة', style: TextStyle(color: COLOR_FONT)),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Text(
                        "سورة الرعد ",
                        style: TextStyle(
                            color: COLOR_FONT,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "ص 249-252 ",
                        style: TextStyle(
                            color: COLOR_FONT,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CharBar(),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Image.asset(
                'assets/images/quran.jpg',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              bottom: 50,
              left: 20,
            )
          ]),
        ),
      ),
    );
  }
}

class CharBar extends StatelessWidget {
  const CharBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            height: 20,
            decoration: BoxDecoration(
              border: Border.all(color: COLOR_progressing, width: 1.0),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            height: 20,
            width: 150,
            decoration: BoxDecoration(
              border: Border.all(color: COLOR_GREEN, width: 1.0),
              color: COLOR_progressing,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Positioned(
            child: Text('45%'),
            left: 200,
          )
        ],
      ),
    );
  }
}
