import 'package:flutter/material.dart';

import '../utils/styles.dart';
import '../widgets/slide-image.dart';

class Agenda extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final TextStyle _bulletStyle = getBulletTextStyle(deviceWidth: _deviceWidth);
    
    return Row(children: <Widget>[
      SlideImage(imagePath: 'assets/images/shadow.jpg'),
      Expanded(
        child: ListView(
          padding: getSlidePadding(deviceWidth: _deviceWidth),
          children: <Widget>[
            Text('Agenda', style: getHeadlineTextStyle(deviceWidth: _deviceWidth)),
            SizedBox(height: 20),
            Text('• Flutter for Web', style: _bulletStyle),
            Text('   • Intro', style: _bulletStyle),
            Text('   • The Good Parts', style: _bulletStyle),
            Text('   • Good to Know Widgets', style: _bulletStyle),
            Text('   • Work In Progress', style: _bulletStyle),
            Text('• Other Flutter News', style: _bulletStyle),
            Text('• Dart Updates', style: _bulletStyle),
            Text('• Flutter Predictions', style: _bulletStyle),
            Text('• Resources', style: _bulletStyle)
          ]
        )),
    ]);
  }
}