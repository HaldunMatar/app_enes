import 'package:app_enes/custom/qurancard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class BookItem extends StatelessWidget {
  final dynamic itemData;

  const BookItem({Key? key, this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //  height: 200,
      // color: Color.fromARGB(255, 219, 88, 121),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: InkWell(
            // splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
            },
            child: Stack(
              children: [
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
                          Text(itemData['name'],
                              style: TextStyle(
                                  color: COLOR_FONT,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Text(
                            itemData['description'],
                            style: TextStyle(
                              color: COLOR_FONT,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ]),
                      ),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            itemData['listen'],
                            style: TextStyle(
                              color: COLOR_FONT,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ]),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CharBar(),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: Image.asset(
                    itemData['image'],
                    width: 100,
                    height: 182,
                    fit: BoxFit.cover,
                  ),
                  bottom: 50,
                  left: 20,
                ),
              ],
              clipBehavior: Clip.none,
            ),
          ),
        ),
      ),
    );
  }
}
