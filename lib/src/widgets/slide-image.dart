import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';

class SlideImage extends StatelessWidget {
  final String imagePath;
  SlideImage({@required this.imagePath});

  @override 
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    
    return Container(
      alignment: Alignment.topLeft,
      color: CustomColors.colorPrimary,
      width: deviceWidth * .33,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        width: deviceWidth * .33,
        height: deviceHeight - 55
      )
    );
  }
}