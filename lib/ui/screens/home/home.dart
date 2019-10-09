import 'package:flutter/material.dart';
import 'package:flutter_nubank/ui/values/styles.dart';
import '../../values/strings.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.only(top: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/icons/logo.png',
                  height: 45,
                ),
                Text(
                  "Yuri",
                  style: AppTheme.heading,
                )
              ],
            )),
      ),
    );
  }
}
