import 'package:flutter/material.dart';

import '../utils/styles.dart';
import '../widgets/slide-image.dart';

class WorkInProgress extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final TextStyle _bulletStyle = getBulletTextStyle(deviceWidth: _deviceWidth);
    
    return Row(children: <Widget>[
      SlideImage(imagePath: 'assets/images/lamp.jpg'),
      Expanded(
        child: ListView(
          padding: getSlidePadding(deviceWidth: _deviceWidth),
          children: <Widget>[
            Text('Work in Progress', style: getHeadlineTextStyle(deviceWidth: _deviceWidth)),
            SizedBox(height: 20,),
            Text('• No Stateful Hot Reload', style: _bulletStyle),
            Text('• Still Need to Optimize', style: _bulletStyle),
            Text('• Plugin System Not Robust Yet', style: _bulletStyle),
            Text('• Hash Bang Routing Only', style: _bulletStyle),
            Text('• Performance', style: _bulletStyle),
            Text('• Merging to Master != Production Ready', style: _bulletStyle),
          ]
        )),
    ]);
  }
}