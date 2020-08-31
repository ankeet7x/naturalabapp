import 'package:flutter/material.dart';
import 'package:naturallab/pages/components/colors.dart';

import 'components/appbar.dart';
import 'components/imagecont.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> isSelected;

  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

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
                Positioned(
                  top: 100,
                  left: 45,
                  child: ToggleButtons(
                    fillColor: buttonColor,
                    selectedColor: bgColor,
                    children: <Widget>[
                      Container(
                        width: size.width * 0.13,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text("A1"),
                        ),
                      ),
                      Container(
                        width: size.width * 0.13,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text("A2"),
                        ),
                      ),
                      // Container(
                      //   width: size.width * 0.13,
                      //   child: Padding(
                      //     padding: EdgeInsets.only(left: 15),
                      //     child: Text("A3"),
                      //   ),
                      // )
                    ],
                    onPressed: (int index) {
                      setState(() {
                        isSelected[index] = !isSelected[index];
                      });
                    },
                    isSelected: isSelected,
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 45,
                  child: RaisedButton(
                    splashColor: bgColor,
                    color: buttonColor,
                    child: Center(
                      child: Text(
                        "Add to Cart",
                        style: TextStyle(color: bgColor),
                      ),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
