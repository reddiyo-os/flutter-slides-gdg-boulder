import 'package:flutter/material.dart';

import 'dart:html';

import '../utils/styles.dart';
import '../widgets/slide-image.dart';

class Resources extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final TextStyle _bulletStyle = getBulletTextStyle(deviceWidth: _deviceWidth);
    final TextStyle _smallBulletStyle = getExtraSmallBulletTextStyle(deviceWidth: _deviceWidth);
    
    return Row(children: <Widget>[
        SlideImage(imagePath: 'assets/images/reflection.jpg'),
        Expanded(
          child: ListView(
            padding: getSlidePadding(deviceWidth: _deviceWidth),
            children: <Widget>[
              Text('Resources', style: getHeadlineTextStyle(deviceWidth: _deviceWidth)),
              SizedBox(height: 20,),
              Listener(
                onPointerDown: (_) {
                  window.open('https://flutter.dev/web', 'tab');
                },
                child: Text('• Flutter.dev/web', style: _bulletStyle)
              ),
              Text('• I/O Flutter Playlist', style: _bulletStyle),
              Listener(
                onPointerDown: (_) {
                  window.open('https://goo.gle/2ZTbnOs', 'tab');
                },
                child: Text('    - https://goo.gle/2ZTbnOs', style: _smallBulletStyle)),
              Text('• Developer Quest Sample App', style: _bulletStyle),
              Listener(
                onPointerDown: (_) {
                  window.open('https://github.com/2d-inc/developer_quest', 'tab');
                },
                child: Text('    - github.com/2d-inc/developer_quest', style: _smallBulletStyle)
              ),
              Listener(
                onPointerDown: (_) {
                  window.open('https://itsallwidgets.com', 'tab');
                },
                child: Text('• ItsAllWidgets.com', style: _bulletStyle)
              ),
              Text('• Provider Package', style: _bulletStyle),
              Listener(
                onPointerDown: (_) {
                  window.open('https://pub.dev/packages/provider', 'tab');
                },
                child: Text('    - https://pub.dev/packages/provider', style: _smallBulletStyle)
              ),
              Text('• Flutter & Raspberry Pi Talk @ OSCON', style: _bulletStyle),
              Listener(
                onPointerDown: (_) {
                  window.open('https://youtu.be/X-4LJSqCPzM', 'tab');
                },
                child: Text('    - https://youtu.be/X-4LJSqCPzM', style: _smallBulletStyle)
              ),
              Text('• Source Code for this Deck', style: _bulletStyle),
              Listener(
                onPointerDown: (_) {
                  window.open('https://github.com/reddiyo-os/flutter-slides-gdg-boulder', 'tab');
                },
                child: Text('    - github.com/reddiyo-os/flutter-slides-gdg-boulder', style: _smallBulletStyle)
              )
            ]
          )),
      ]);
  }
}