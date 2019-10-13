import 'package:flutter/material.dart';
import 'package:flutter_nubank/ui/animations/move_animation.dart';
import 'package:flutter_nubank/ui/widgets/app_bar_perfil.dart';
import 'package:flutter_nubank/ui/widgets/button_bar_list.dart';
import 'package:flutter_nubank/ui/widgets/custom_swiper_pagination.dart';
import 'package:flutter_nubank/ui/widgets/main_list.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //print(tween.value.toString());
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          AppBarPerfil(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                MoveAnimation(
                  duration: Duration(seconds: 3),
                  child: MainList(),
                ),
              ]),
            ),
          ),
          MoveAnimation(
            duration: Duration(seconds: 3),
            child: CustomSwiperPagination(),
          ),
          MoveAnimation(
            duration: Duration(milliseconds: 3500),
            child:ButtonBarList(),
          ),
        ],
      ),
    ));
  }
}
