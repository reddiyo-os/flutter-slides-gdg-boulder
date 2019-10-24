import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';

class FooterLogo extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    return Listener(
      onPointerEnter: (_) {Navigator.pushNamed(context, '/'); },
      child: Container(
        height: 55,
        width: _deviceWidth * .33,
        color: CustomColors.colorPrimary,
        child: Image.asset(
          'assets/images/reddiyo-logo-reversed.png',
        ),
        padding: const EdgeInsets.only(bottom: 15, top: 15),
      ),
    );
  }
}