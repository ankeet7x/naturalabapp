import 'package:flutter/material.dart';
import 'package:naturallab/pages/components/colors.dart';

import 'components/appbar.dart';
import 'components/imagecont.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: <Widget>[
          new ImageContainer(size: size),
          SizedBox(
            height: 20,
            child: Container(
              color: bgColor,
            ),
          ),
          Container(
            height: size.height * 0.4835,
            width: size.width,
            color: bgColor,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 20,
                  left: 45,
                  child: Text(
                    "NATURAL TONER MASSAGER",
                    style: TextStyle(
                        color: buttonColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 45,
                  child: Text(
                    "fjaslkdjflksadjf asfdjsadlkfjasd \nsjdkfjaslkfjalskdjflksadjflksj",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
