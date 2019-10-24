import 'package:flutter/material.dart';

import 'src/utils/custom_routes.dart';
import 'src/utils/custom_colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: customPrimary,
          accentColor: customAccent,
          primaryColor: CustomColors.colorDark,
          primaryColorDark: CustomColors.colorDarkest,
          fontFamily: 'Montserrat',
          textTheme: Theme.of(context).textTheme.apply(
            bodyColor: CustomColors.colorDarkest,
            displayColor: CustomColors.colorDarkest,
            fontSizeFactor: 3,
          )
        ),
      onGenerateRoute: CustomRoutes().getCustomRoutes,
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) {
            return Text('Not Found');
          }
        );
      },
    );
  }
}