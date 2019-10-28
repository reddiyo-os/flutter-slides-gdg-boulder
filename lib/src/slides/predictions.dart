import 'package:flutter/material.dart';

import '../utils/styles.dart';
import '../utils/custom_colors.dart';
import '../widgets/slide-image.dart';

class Predictions extends StatelessWidget {
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
      SlideImage(imagePath: 'assets/images/crystal-ball.jpg'),
      Expanded(
        child: ListView(
          padding: getSlidePadding(deviceWidth: _deviceWidth),
          children: <Widget>[
            Text('Flutter Predictions', style: getHeadlineTextStyle(deviceWidth: _deviceWidth)),
            SizedBox(height: 20,),
            Text('• Flutter for iOS/Android', style: _bulletStyle),
            Row(
              children: <Widget>[
                Text('   - Incremental adoption among large companies', style: _smallBulletStyle),
                IconButton(
                  icon: const Icon(Icons.launch),
                  color: CustomColors.colorGold,
                  onPressed: () {
                    _showModal(context, CompaniesUsing());
                  },
                ),
              ],
            ),
            Text('   - Full adoption among startups/small biz', style: _smallBulletStyle),
            SizedBox(height: 5),
            Text('   - Community will gain momentum', style: _smallBulletStyle),
            SizedBox(height: 15),
            Text('• Flutter for Web', style: _bulletStyle),
            Text('   - Mobile devs will love it', style: _smallBulletStyle), 
            SizedBox(height: 5),
            Text('   - Web devs will be slower to adopt', style: _smallBulletStyle),
            SizedBox(height: 5),
            Text('   - Beta announcement at Flutter Interact', style: _smallBulletStyle),
          ]
        )),
    ]);
  }
}

class CompaniesUsing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: _deviceWidth * .5,
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/who.jpg',
          ),
        ],
      )
    );
  }
}