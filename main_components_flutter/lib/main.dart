import 'package:flutter/material.dart';
import 'package:main_components_flutter/src/pages/alert_page.dart';
import 'package:main_components_flutter/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Components',
        initialRoute: '/',
        routes: getAppRoutes(),
        onGenerateRoute: (RouteSettings settings) {
          print(settings.name);
          return MaterialPageRoute(
              builder: (BuildContext context) => AlertPage());
        });
  }
}
