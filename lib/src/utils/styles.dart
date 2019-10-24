import 'package:flutter/material.dart';

import './custom_colors.dart';

const TextStyle ryHeadlineLargeText = TextStyle(fontSize: 48.0, color: CustomColors.colorBlue, height: 1.1);
const EdgeInsets slidePadding = EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 60);
const TextStyle modalHeaderStyle = TextStyle(fontSize: 22.0, color: CustomColors.colorPrimary, height: 1.4, fontWeight: FontWeight.w600);
const TextStyle modalSourceStyle = TextStyle(fontSize: 18.0, color: CustomColors.colorPrimary);

TextStyle getHeadlineTextStyle({@required double deviceWidth}) {
  return TextStyle(fontSize: deviceWidth * .04, color: CustomColors.colorBlue, height: 1.2);
}

TextStyle getBulletTextStyle({@required double deviceWidth}) {
  return TextStyle(fontSize: deviceWidth * .025, height: 1.6);
}

TextStyle getSmallBulletTextStyle({@required double deviceWidth}) {
  return TextStyle(fontSize: deviceWidth * .02, height: 1.4, color: CustomColors.colorPrimary90);
}

TextStyle getExtraSmallBulletTextStyle({@required double deviceWidth}) {
  return TextStyle(fontSize: deviceWidth * .017, height: 1.2, color: CustomColors.colorPrimary90);
}

EdgeInsets getSlidePadding({@required double deviceWidth}) {
  return EdgeInsets.only(top: deviceWidth * .04, right: deviceWidth * .05, left: deviceWidth * .05);
}