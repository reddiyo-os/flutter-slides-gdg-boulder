import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';

class ThankYou extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double _deviceHeight = MediaQuery.of(context).size.height;
    final double _deviceWidth = MediaQuery.of(context).size.width;

    final double fontSizeHeadline = _deviceWidth * .07;
    final double fontSizeSubHead = fontSizeHeadline * .5;
    final double iconSize = fontSizeHeadline * .5;

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
                  SizedBox(height: 70,),
                  Text('Thank You', style: TextStyle(color: Colors.white, fontSize: fontSizeHeadline, fontWeight: FontWeight.w200)), 
                  SizedBox(height: 100,),
                  Text('Rona Kilmer', style: TextStyle(color: Colors.white, fontSize: _fontSizeSubHead, height: 1.4)),
                  Text('Twitter: @rkunboxed, @reddiyo', style: _socialStyle),
                  Text('Facebook: @reddiyo', style:  _socialStyle),
                  Text('Instagram: @goreddiyo', style:  _socialStyle),
                  SizedBox(height: 40,),
                  Container(
                    child: Image.asset(
                      'assets/images/reddiyo-logo-reversed.png',
                      width: _deviceWidth * .10,
                    )
                  ),
                  
              ],),
            ),
          ),
        ],
      )
    );
  }
}