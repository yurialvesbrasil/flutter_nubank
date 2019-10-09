import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ui/values/strings.dart';
import 'route_generator.dart';
import 'ui/values/colors.dart';
import 'ui/values/routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // teste This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_NAME,
      theme: ThemeData(
        primarySwatch: primarySwatch,
        primaryColor: primaryColor,
        canvasColor: canvasColor,
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: appBarThemeColor,
        ),
      ),
      initialRoute: HOME_ROUTE,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
