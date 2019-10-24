import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';

class TitleSlide extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    final double fontSizeHeadline = deviceWidth * .07;
    final double fontSizeSubHead = fontSizeHeadline * .5;
    final double iconSize = fontSizeHeadline * .5;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            height: deviceHeight,
            width: deviceWidth, 
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/stairs.jpg'),
                fit: BoxFit.cover,
              )
            ),
          ),
          Positioned(
            top: deviceHeight * .18,
            width: deviceWidth,
            child: Center(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/logo_flutter_1080px_clr.png',
                    width: deviceWidth * .10,
                  ),
                  SizedBox(height: 50,),
                  Text('Flutter for Web', style: TextStyle(color: Colors.white, fontSize: fontSizeHeadline, fontWeight: FontWeight.w200)),
                  SizedBox(height: 20,),
                  Text('and Other News in the Flutter/Dart Ecosystem', style: TextStyle(color: Colors.white, fontSize: fontSizeSubHead)),
                  SizedBox(height: 50,),
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/reddiyo');
                    },
                    child: Icon(Icons.keyboard_arrow_right, color: CustomColors.colorBlueLight, size: iconSize),
                    shape: CircleBorder(),
                    elevation: 0.0,
                    highlightElevation: 0.0,
                    fillColor: CustomColors.colorWashMedium,
                    splashColor: CustomColors.colorWashMedium,
                    highlightColor: CustomColors.colorWashMedium,
                    padding: EdgeInsets.all(8.0),
                    constraints: BoxConstraints(minWidth: 72.0),
                  )
              ],),
            ),
          ),
        ],
      )
    );
  }
}