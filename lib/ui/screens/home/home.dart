import 'package:flutter/material.dart';
import 'package:flutter_nubank/ui/widgets/app_bar_perfil.dart';
import 'package:flutter_nubank/ui/widgets/button_bar_list.dart';
import 'package:flutter_nubank/ui/widgets/custom_swiper_pagination.dart';
import 'package:flutter_nubank/ui/widgets/expanded_perfil_container.dart';
import 'package:flutter_nubank/ui/widgets/main_list.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    )..addListener(() => setState(() {}));
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.ease,
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //print(tween.value.toString());
    return  Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              AppBarPerfil(
                animationController: animationController,
                animation: animation,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      MainList(),
                    ],
                  ),
                ),
              ),
              CustomSwiperPagination(),
              ButtonBarList(),
            ],
          ),
        ));
  }
}
