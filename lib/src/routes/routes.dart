import 'package:flutter/material.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/input_page.dart';
import 'package:componentes/src/pages/listview_builder_page.dart';
import 'package:componentes/src/pages/animated_container.dart';

// final routes = <String, WidgetBuilder>{
//   '/': (BuildContext context) => HomePage(),
//   'alert': (BuildContext context) => AlertPage(),
//   'avatar': (BuildContext context) => AvatarPage(),
// };

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'input': (BuildContext context) => InputPage(),
    'list': (BuildContext context) => ListBuilderPage(),
    'animated-container': (BuildContext context) => AnimatedContainerPage(),
  };
}
