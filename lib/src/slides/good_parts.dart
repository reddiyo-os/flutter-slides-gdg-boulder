import 'package:flutter/material.dart';

import '../utils/styles.dart';
import '../widgets/slide-image.dart';

class GoodParts extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final TextStyle _bulletStyle = getBulletTextStyle(deviceWidth: _deviceWidth);

    return Row(children: <Widget>[
      SlideImage(imagePath: 'assets/images/window.jpg'),
      Expanded(
        child: ListView(
          padding: getSlidePadding(deviceWidth: _deviceWidth),
          children: <Widget>[
            Text('The Good Parts', style: getHeadlineTextStyle(deviceWidth: _deviceWidth)),
            SizedBox(height: 20,),
            Text('• Widgets Just Work', style: _bulletStyle),
            Text('• Responsive Web', style: _bulletStyle),
            Text('• Dart2JS Compiler', style: _bulletStyle),
            Text('• Dart DevTools', style: _bulletStyle),
          ]
        )),
    ]);
  }
}