import 'package:flutter/material.dart';

import '../slides/title_slide.dart';
import '../slides/reddiyo.dart';
import '../slides/slides.dart';
import '../slides/thank_you.dart';

class CustomRoutes {
  Route getCustomRoutes(RouteSettings settings) {
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (context) { return TitleSlide(); });
      case '/reddiyo':
        return MaterialPageRoute(builder: (context) { return Reddiyo(); });
      case '/slides':
        return MaterialPageRoute( builder: (context) { return Slides(); } );
      case '/thanks':
        return MaterialPageRoute( builder: (context) { return ThankYou(); } );
      default:
        return MaterialPageRoute( builder: (context) { return TitleSlide();}
        );
    }
  }
}