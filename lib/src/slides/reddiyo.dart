import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';

class Reddiyo extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double _deviceHeight = MediaQuery.of(context).size.height;
    final double _deviceWidth = MediaQuery.of(context).size.width;

    final double _fontSizeHeadline = _deviceWidth * .05;
    final double _fontSizeSubHead = _fontSizeHeadline * .5;
    final double _fontSizeSocial = _fontSizeHeadline * .33;
    final double _iconSize = _fontSizeHeadline * .6;
    final TextStyle _socialStyle = TextStyle(color: Colors.white, fontSize: _fontSizeSocial, height: 1.4);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            height: _deviceHeight,
            width: _deviceWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/bike.jpg'),
                fit: BoxFit.cover,
              )
            ),
          ),
          Positioned(
            top: _deviceHeight * .25,
            width: _deviceWidth,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      'assets/images/reddiyo-logo-reversed.png',
                      width: _deviceWidth * .18,
                    )
                  ),
                  SizedBox(height: 30,),
                  Text('Rona Kilmer', style: TextStyle(color: CustomColors.colorBlueLight, fontSize: _fontSizeHeadline, fontWeight: FontWeight.w200)), 
                  Text('CPO and Co-Founder', style: TextStyle(color: Colors.white, fontSize: _fontSizeSubHead)),
                  SizedBox(height: 40,),
                  Text('Twitter: @rkunboxed, @reddiyo', style: _socialStyle),
                  Text('Facebook: @reddiyo', style:  _socialStyle),
                  Text('Instagram: @goreddiyo', style:  _socialStyle),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RawMaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: Icon(Icons.keyboard_arrow_left, color: CustomColors.colorBlueLight, size: _iconSize),
                        shape: CircleBorder(),
                        elevation: 0.0,
                        highlightElevation: 0.0,
                        fillColor: CustomColors.colorWashMedium,
                        splashColor: CustomColors.colorWashMedium,
                        highlightColor: CustomColors.colorWashMedium,
                        padding: EdgeInsets.all(8.0),
                        constraints: BoxConstraints(minWidth: 72.0),
                      ),
                      SizedBox(width: 10,),
                      RawMaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/slides');
                        },
                        child: Icon(Icons.keyboard_arrow_right, color: CustomColors.colorBlueLight, size: _iconSize),
                        shape: CircleBorder(),
                        elevation: 0.0,
                        highlightElevation: 0.0,
                        fillColor: CustomColors.colorWashMedium,
                        splashColor: CustomColors.colorWashMedium,
                        highlightColor: CustomColors.colorWashMedium,
                        padding: EdgeInsets.all(8.0),
                        constraints: BoxConstraints(minWidth: 72.0),
                      ),
                  ],)
              ],),
            ),
          ),
        ],
      )
    );
  }
}