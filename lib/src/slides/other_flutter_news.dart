import 'package:flutter/material.dart';

import 'dart:html';

import '../utils/styles.dart';
import '../utils/custom_colors.dart';
import '../widgets/slide-image.dart';

class OtherFlutterNews extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final TextStyle _bulletStyle = getBulletTextStyle(deviceWidth: _deviceWidth);
    final TextStyle _smallBulletStyle = getSmallBulletTextStyle(deviceWidth: _deviceWidth);

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
            Text('Other Flutter News', style: getHeadlineTextStyle(deviceWidth: _deviceWidth)),
            SizedBox(height: 20,),
            Text('• Provider Wins!', style: _bulletStyle),
            Text('• New Widgets', style: _bulletStyle),
            Row(
              children: <Widget>[
                Text('   - Reorderable List View', style: _smallBulletStyle),
                IconButton(
                  icon: const Icon(Icons.launch, semanticLabel: 'launch reorderable list view example',),
                  color: CustomColors.colorGold,
                  onPressed: () {
                    _showModal(context, ReorderableListDialog());
                  },
                ),
              ],
            ), 
            Row(
              children: <Widget>[
                Text('   - Range Slider', style: _smallBulletStyle),
                IconButton(
                  icon: const Icon(Icons.launch, semanticLabel: 'range slider example',),
                  color: CustomColors.colorGold,
                  onPressed: () {
                    _showModal(context, RangeSliderDialog());
                  },
                ),
              ],
            ),
            SizedBox(height: 5),
            Text('   - Expanding Search', style: _smallBulletStyle),
            SelectableText(
              '     https://youtu.be/YSULAJf6R6M (minute 8:35)',
              style: _smallBulletStyle,
              onTap: () {window.open('https://youtu.be/YSULAJf6R6M', 'tab');}
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Text('• Accessibility Semantics Label', style: _bulletStyle),
                IconButton(
                  icon: const Icon(Icons.launch, semanticLabel: 'launch semantics example',),
                  color: CustomColors.colorGold,
                  onPressed: () {
                    _showModal(context, SemanticsDialog());
                  },
                ),
              ],
            ),
            Text('• Dark Theme Support (Android)', style: _bulletStyle),
            SizedBox(height: 5),
            Text('• Flutter Interact (Dec 11th)', style: _bulletStyle)
          ]
        )),
    ]);
  }
}

class SemanticsDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: _deviceWidth * .5,
      child: Column(
        children: <Widget>[
          Text('Semantics Examples', style: modalHeaderStyle),
          Divider(color: customPrimary,),
          Image.asset(
            'assets/images/semantics.png',
          ),
          Divider(color: customPrimary,),
          SelectableText(
            'https://youtu.be/YSULAJf6R6M',
            style: modalSourceStyle,
            onTap: () {window.open('https://youtu.be/YSULAJf6R6M', 'tab');}
          )
        ],
      )
    );
  }
}

class ReorderableListDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: _deviceWidth * .5,
      child: Column(
        children: <Widget>[
          Text('ReorderableListView Example', style: modalHeaderStyle),
          Divider(color: customPrimary,),
          Image.asset(
            'assets/images/reorderable-listview.png',
          ),
          Divider(color: customPrimary,),
          SelectableText(
            'https://youtu.be/3fB1mxOsqJE',
            style: modalSourceStyle,
            onTap: () {window.open('https://youtu.be/3fB1mxOsqJE', 'tab');}
          )
        ],
      )
    );
  }
}

class RangeSliderDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: _deviceWidth * .5,
      child: Column(
        children: <Widget>[
          Text('RangeSlider Example', style: modalHeaderStyle),
          Divider(color: customPrimary,),
          Image.asset(
            'assets/images/range-slider.png',
          )
        ],
      )
    );
  }
}