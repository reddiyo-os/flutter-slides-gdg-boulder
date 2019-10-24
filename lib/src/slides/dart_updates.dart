import 'package:flutter/material.dart';

import '../utils/styles.dart';
import '../utils/custom_colors.dart';
import '../widgets/slide-image.dart';

class DartUpdates extends StatelessWidget {
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
      SlideImage(imagePath: 'assets/images/pillars_vert.jpg'),
      Expanded(
        child: ListView(
          padding: getSlidePadding(deviceWidth: _deviceWidth),
          children: <Widget>[
            Text('Dart Updates', style: getHeadlineTextStyle(deviceWidth: _deviceWidth)),
            SizedBox(height: 20,),
            // Text('• New Since Dart 2.3', style: _bulletStyle),
            Row(
              children: <Widget>[
                Text('• Spread Operator', style: _bulletStyle),
                IconButton(
                  icon: const Icon(Icons.launch),
                  color: CustomColors.colorGold,
                  onPressed: () {
                    _showModal(context, SpreadOperator());
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('• Collection if and for', style: _bulletStyle),
                IconButton(
                  icon: const Icon(Icons.launch),
                  color: CustomColors.colorGold,
                  onPressed: () {
                    _showModal(context, CollectionBeforeAfter());
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('• Structured Error Messages', style: _bulletStyle),
                IconButton(
                  icon: const Icon(Icons.launch),
                  color: CustomColors.colorGold,
                  onPressed: () {
                    _showModal(context, ErrorMessages());
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('• ML Code Completion (preview)', style: _bulletStyle),
                IconButton(
                  icon: const Icon(Icons.launch),
                  color: CustomColors.colorGold,
                  onPressed: () {
                    _showModal(context, CodeCompletion());
                  },
                ),
              ],
            ), 
            Text('• C Interoperability (preview)', style: _bulletStyle),
          ]
        )),
    ]);
  }
}

class CodeCompletion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: _deviceWidth * .5,
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/ml-code-completion.jpg',
          )
        ],
      )
    );
  }
}

class ErrorMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: _deviceWidth * .5,
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/structured-error-messages.png',
          )
        ],
      )
    );
  }
}

class SpreadOperator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: _deviceWidth * .5,
      child: Column(
        children: <Widget>[
          Text('Spread Operator Example', style: modalHeaderStyle),
          Divider(color: customPrimary,),
          Image.asset(
            'assets/images/spread_operator.png',
          ),
          Text('https://youtu.be/J5DQRPRBiFI', style: modalSourceStyle)
        ],
      )
    );
  }
}

class CollectionBeforeAfter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: _deviceWidth * .65,
      child: Column(
        children: <Widget>[
          Text('Collection Construction Before/After', style: modalHeaderStyle),
          Image.asset(
            'assets/images/spread_and_for_loop.jpg',
          ),
          Text('https://youtu.be/J5DQRPRBiFI', style: modalSourceStyle)
        ],
      )
    );
  }
}