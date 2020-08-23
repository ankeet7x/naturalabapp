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
          )
        ],
      ),
    );
  }
}
