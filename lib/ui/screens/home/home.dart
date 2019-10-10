import 'package:flutter/material.dart';
import 'package:flutter_nubank/ui/widgets/app_bar_perfil.dart';
import 'package:flutter_nubank/ui/widgets/button_bar_list.dart';
import 'package:flutter_nubank/ui/widgets/expanded_perfil_container.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          AppBarPerfil(),
          ExpandedPerfilContainer(),
          Expanded(
              child: SingleChildScrollView(
            child: Container(),
          )),
          ButtonBarList(),
        ],
      ),
    ));
  }
}
