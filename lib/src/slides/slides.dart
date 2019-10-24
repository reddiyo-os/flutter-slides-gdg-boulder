import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/custom_colors.dart';
import '../slides/agenda.dart';
import '../slides/intro.dart';
import '../slides/good_parts.dart';
import '../slides/good_to_know_widgets.dart';
import '../slides/wip.dart';
import '../slides/other_flutter_news.dart';
import '../slides/dart_updates.dart';
import '../slides/predictions.dart';
import '../slides/resources.dart';
import '../widgets/footer_logo.dart';

class Slides extends StatefulWidget {
  @override
  _SlidesState createState() => _SlidesState();

}

class _SlidesState extends State<Slides> {

    List<Widget> _slides = [
      Agenda(),
      Intro(),
      GoodParts(),
      GoodToKnowWidgets(),
      WorkInProgress(),
      OtherFlutterNews(),
      DartUpdates(),
      Predictions(),
      Resources()
    ];
    int _slideNumber = 0;

    final FocusNode _focusNode = FocusNode();

    @override 
    Widget build(BuildContext context) {
      FocusScope.of(context).requestFocus(_focusNode);

      return Scaffold(
          body: Builder(builder: (BuildContext context) {
            return _slides[_slideNumber];
          }),
          bottomNavigationBar: Container(
            height: 55,
            child: Row(
              children: <Widget>[
                FooterLogo(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RawKeyboardListener(
                          focusNode: _focusNode,
                          onKey: (RawKeyEvent event) {
                            if (event.runtimeType == RawKeyDownEvent && event.logicalKey.keyId == 4295426128) {                                  
                              _focusNode.unfocus();
                              if (_slideNumber > 0) {
                                setState(() { _slideNumber = _slideNumber - 1; });
                              }
                              else {
                                Navigator.pop(context);
                              }
                            }
                          },
                          child: RawMaterialButton(
                            onPressed: () {
                              if (_slideNumber > 0) {
                                setState(() { _slideNumber = _slideNumber - 1; });
                              }
                              else {
                                Navigator.pop(context);
                              }
                            },
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              color: CustomColors.colorBlue,
                              size: 30,
                              semanticLabel: 'Next Slide',
                            ),
                            shape: CircleBorder(),
                            elevation: 0.0,
                            highlightElevation: 0.0,
                            focusElevation: 0.0,
                            hoverElevation: 0.0,
                            fillColor: CustomColors.colorWashLight,
                            splashColor: CustomColors.colorWashLight,
                            highlightColor: CustomColors.colorWashLight,
                            hoverColor: CustomColors.colorWashLight,
                            padding: EdgeInsets.all(8),
                            constraints: BoxConstraints(minWidth: 64.0),
                          ),
                        ),
                        RawKeyboardListener(
                          focusNode: _focusNode,
                          onKey: (RawKeyEvent event) {
                            if (event.runtimeType == RawKeyDownEvent && event.logicalKey.keyId == 4295426127) {                                  
                              _focusNode.unfocus();
                              if (_slideNumber < _slides.length - 1) {
                                setState(() { _slideNumber = _slideNumber + 1; });
                              }
                            }
                          },
                          child: RawMaterialButton(
                            onPressed: () {
                              if (_slideNumber < _slides.length - 1) {
                                setState(() { _slideNumber = _slideNumber + 1; });
                              }
                              else {
                                Navigator.popAndPushNamed(context, '/thanks');
                              }
                            },
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: CustomColors.colorBlue,
                              size: 30,
                              semanticLabel: 'Next Slide',
                            ),
                            shape: CircleBorder(),
                            elevation: 0.0,
                            highlightElevation: 0.0,
                            focusElevation: 0.0,
                            hoverElevation: 0.0,
                            fillColor: CustomColors.colorWashLight,
                            splashColor: CustomColors.colorWashLight,
                            highlightColor: CustomColors.colorWashLight,
                            hoverColor: CustomColors.colorWashLight,
                            padding: EdgeInsets.all(8),
                            constraints: BoxConstraints(minWidth: 64.0),
                          ),
                        )
                      ]
                    )
                  ))
              ],
            ),
          ),
      );
    }
}