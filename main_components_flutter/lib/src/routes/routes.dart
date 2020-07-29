import 'package:flutter/material.dart';
import 'package:main_components_flutter/src/pages/alert_page.dart';
import 'package:main_components_flutter/src/pages/avatar_page.dart';
import 'package:main_components_flutter/src/pages/card_page.dart';
import 'package:main_components_flutter/src/pages/home_page.dart';
import 'package:main_components_flutter/src/pages/listview_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'list': (BuildContext context) => ListPage(),
  };
}
