import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_nubank/core/view_models/home_view_model.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';

class MainList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     final model = Provider.of<HomeViewModel>(context);
    return
      Container(
        height: MediaQuery.of(context).size.height / 1.7,
        child: Swiper(
          onIndexChanged: (index){
            model.setIndexMainPage(index: index);
          },
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.fromLTRB(18, 16, 20, 0),
              width: MediaQuery.of(context).size.width - 32,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
            );
          },
          itemCount: 3,
          loop: false,
        ),
      );

  }
}
