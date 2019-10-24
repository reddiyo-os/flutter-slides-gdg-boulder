import 'package:flutter/material.dart';

import 'dart:html';

import '../utils/styles.dart';
import '../utils/custom_colors.dart';
import '../widgets/slide-image.dart';

class GoodToKnowWidgets extends StatelessWidget {
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
      SlideImage(imagePath: 'assets/images/window.jpg'),
      Expanded(
        child: ListView(
          padding: getSlidePadding(deviceWidth: _deviceWidth),
          children: <Widget>[
            Text('Good To Know Widgets', style: getHeadlineTextStyle(deviceWidth: _deviceWidth)),
            SizedBox(height: 20,),
            Row(
              children: <Widget>[
                Text('• RawKeyBoardListener', style: _bulletStyle),
                IconButton(
                  icon: const Icon(Icons.launch),
                  color: CustomColors.colorGold,
                  onPressed: () {
                    _showModal(context, KeyboardDialog());
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                MouseRegionBullet(),
                IconButton(
                  icon: const Icon(Icons.launch),
                  color: CustomColors.colorGold,
                  onPressed: () {
                    _showModal(context, MouseRegionDialog());
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SelectableText('• SelectableText', style: _bulletStyle, onTap: () {window.open('https://api.flutter.dev/flutter/material/SelectableText-class.html', 'tab');}),
                IconButton(
                  icon: const Icon(Icons.launch, semanticLabel: 'selectable text example',),
                  color: CustomColors.colorGold,
                  onPressed: () {
                    _showModal(context, SelectableTextDialog());
                  },
                ),
              ],
            ),
          ]
        )),
    ]);
  }
}

class KeyboardDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: _deviceWidth * .5,
      child: Column(
        children: <Widget>[
          Text('RawKeyBoardListener Example', style: modalHeaderStyle),
          Divider(color: customPrimary,),
          Image.asset('assets/images/RawKeyBoardListener2.png'),
          Divider(color: customPrimary,),
          Text('https://youtu.be/IyFZznAk69U', style: modalSourceStyle)
        ],
      )
    );
  }
}

class MouseRegionDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: _deviceWidth * .5,
      child: Column(
        children: <Widget>[
          Text('MouseRegion Example', style: modalHeaderStyle),
          Divider(color: customPrimary,),
          Image.asset(
            'assets/images/mouseregion.png',
          ),
        ],
      )
    );
  }
}

class MouseRegionBullet extends StatefulWidget {
  
  @override
  _MouseRegionBulletState createState() => _MouseRegionBulletState();
}

class _MouseRegionBulletState extends State<MouseRegionBullet> {
  TextStyle _bulletStyle;

  void _handleHoverOn(double deviceWidth) {
    setState((){
      _bulletStyle = TextStyle(fontSize: deviceWidth * .025, height: 1.6, backgroundColor: CustomColors.colorGold);
    });
  }

  void _handleHoverOff(double deviceWidth) {
    setState((){
      _bulletStyle = TextStyle(fontSize: deviceWidth * .025, height: 1.6);
    });
  }

  @override
  void didChangeDependencies() {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    _bulletStyle = TextStyle(fontSize: _deviceWidth * .025, height: 1.6);
    super.didChangeDependencies();
  }
  
  @override 
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;

    return MouseRegion(
      onEnter: (PointerEvent details) {_handleHoverOn(_deviceWidth);},
      onExit: (PointerEvent details) {_handleHoverOff(_deviceWidth);},
      child: Text('• MouseRegion', style: _bulletStyle)
    );
  }
}

class SelectableTextDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: _deviceWidth * .5,
      child: Column(
        children: <Widget>[
          Text('SelectableText Example', style: modalHeaderStyle),
          Divider(color: customPrimary,),
          Image.asset(
            'assets/images/selectable-text.png',
          ),
        ],
      )
    );
  }
}