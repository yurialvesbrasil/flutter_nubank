import 'package:flutter/material.dart';
import 'package:flutter_nubank/ui/animations/move_animation.dart';
import 'package:flutter_nubank/ui/widgets/app_bar_perfil.dart';
import 'package:flutter_nubank/ui/widgets/button_bar_list.dart';
import 'package:flutter_nubank/ui/widgets/custom_swiper_pagination.dart';
import 'package:flutter_nubank/ui/widgets/main_list.dart';
import 'package:provider/provider.dart';

import '../../../core/view_models/home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            AppBarPerfil(),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Column(children: <Widget>[
                    MoveAnimation(
                      duration: Duration(seconds: 3),
                      child: MainList(),
                    ),
                  ]),
                ],
              ),
            ),
            MoveAnimation(
              duration: Duration(seconds: 3),
              child: CustomSwiperPagination(),
            ),
            MoveAnimation(
              duration: Duration(milliseconds: 3500),
              child: ButtonBarList(itensButton: model.itensButtonVM),
            ),
          ],
        ),
      ),
    );
  }
}
