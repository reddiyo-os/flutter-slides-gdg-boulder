import 'package:flutter/material.dart';

import '../utils/styles.dart';
import '../utils/custom_colors.dart';
import '../widgets/slide-image.dart';

class Intro extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final TextStyle _bulletStyle = getBulletTextStyle(deviceWidth: _deviceWidth);

    void _showModal(BuildContext context, Widget child) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            children: <Widget>[
              child
            ],
          );
        }
      );
    }
    
    return Row(children: <Widget>[
      SlideImage(imagePath: 'assets/images/dancer.jpg'),
      Expanded(
        child: ListView(
          padding: getSlidePadding(deviceWidth: _deviceWidth),
          children: <Widget>[
            Text('Intro to Flutter for Web', style: getHeadlineTextStyle(deviceWidth: _deviceWidth)),
            SizedBox(height: 20,),
            Text('• Hummingbird -> Flutter for Web -> Flutter', style: _bulletStyle),
            Row(
              children: <Widget>[
                Text('• Flutter All the Things!', style: _bulletStyle),
                IconButton(
                  icon: const Icon(Icons.launch),
                  color: CustomColors.colorGold,
                  onPressed: () {
                    _showModal(context, Platforms());
                  },
                ),
              ],
            ),
            Text('• Technical Preview', style: _bulletStyle),
            Text('• HTML, CSS (w/canvas fallback)', style: _bulletStyle),
            Row(
              children: <Widget>[
                Text('• Tech Stack', style: _bulletStyle),
                IconButton(
                  icon: const Icon(Icons.launch),
                  color: CustomColors.colorGold,
                  onPressed: () {
                    _showModal(context, TechStack());
                  },
                ),
              ],
            ),
          ]
        )),
    ]);
  }
}

class TechStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final TextStyle _blockHeaderStyle = TextStyle(fontSize: 22.0, color: CustomColors.colorPrimary, height: 1.4, fontWeight: FontWeight.w600);
    final TextStyle _blockFontSizeLarge = TextStyle(fontSize: 22.0, color: Colors.white, height: 1.1);
    final TextStyle _blockFontSizeSmall = TextStyle(fontSize: 18.0, color: Colors.white, height: 1.1);
    final EdgeInsets _blockPadding = EdgeInsets.symmetric(horizontal: 20, vertical: 15);
    final double _blockWidth = _deviceWidth * .23;

    return Container(
      width: _deviceWidth * .5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('Flutter for Web', style: _blockHeaderStyle),
              Container(
                alignment: Alignment.center,
                width: _blockWidth,
                padding: _blockPadding,
                color: CustomColors.colorBlueLight, 
                child: Text('Your code', style: _blockFontSizeLarge)
              ),
              Container(
                width: _blockWidth,
                padding: _blockPadding,
                color: CustomColors.colorBlueMedium,
                child: Column(
                  children: <Widget>[
                    Text('Flutter framework in Dart', style: _blockFontSizeLarge),
                    Text('(widgets, gestures, etc)', style: _blockFontSizeSmall),
                  ],
              )),
              Container(
                width: _blockWidth,
                padding: _blockPadding,
                color: CustomColors.colorGreen, 
                child: Column(
                  children: <Widget>[
                    Text('Flutter Web Engine', style: _blockFontSizeLarge),
                    Text('(dart:ui)', style: _blockFontSizeSmall),
                  ],
              )),
              Container(
                alignment: Alignment.center,
                width: _blockWidth,
                padding: _blockPadding,
                color: CustomColors.colorGoldDark, 
                child: Text('Dart2js compiler', style: _blockFontSizeLarge)
              ),
              Container(
                alignment: Alignment.center,
                width: _blockWidth,
                padding: _blockPadding,
                color: CustomColors.colorGold,
                child: Text('Browser', style: _blockFontSizeLarge)
              ),
              Container(
                alignment: Alignment.center,
                width: _blockWidth,
                padding: _blockPadding,
                color: CustomColors.colorAccent,
                child: Text('Hardware', style: _blockFontSizeLarge)
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Flutter for iOS/Android', style: _blockHeaderStyle),
              Container(
                alignment: Alignment.center,
                width: _blockWidth,
                padding: _blockPadding,
                color: CustomColors.colorBlueLight, 
                child: Text('Your code', style: _blockFontSizeLarge)),
              Container(
                width: _blockWidth,
                padding: _blockPadding,
                color: CustomColors.colorBlueMedium, 
                child: Column(
                  children: <Widget>[
                    Text('Flutter framework in Dart', style: _blockFontSizeLarge),
                    Text('(widgets, gestures, etc)', style: _blockFontSizeSmall),
                  ],
              )),
              Container(
                width: _blockWidth,
                padding: _blockPadding,
                color: CustomColors.colorGreen, 
                child: Column(
                  children: <Widget>[
                    Text('C++ Flutter Engine', style: _blockFontSizeLarge),
                    Text('(Skia, Dart runtime, dart:ui)', style: _blockFontSizeSmall),
                  ],
              )),
              Container(
                alignment: Alignment.center,
                width: _blockWidth,
                padding: _blockPadding,
                color: CustomColors.colorGold,
                child: Text('iOS/Android Runner', style: _blockFontSizeLarge)
              ),
              Container(
                alignment: Alignment.center,
                width: _blockWidth,
                padding: _blockPadding,
                color: CustomColors.colorAccent,
                child: Text('Hardware', style: _blockFontSizeLarge)
              ),
            ],
          ),
        ],
      ));
  }
}

class Platforms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: _deviceWidth * .5,
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/platforms.jpg',
          ),
        ],
      )
    );
  }
}