import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_nubank/core/view_models/home_view_model.dart';
import 'package:flutter_nubank/ui/values/colors.dart';
import 'package:flutter_nubank/ui/values/styles.dart';
import 'package:flutter_nubank/ui/widgets/aba_main_2.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';

import 'aba_main_3.dart';
import 'aba_saldo.dart';
import 'fab_progress_bar.dart';

class MainList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 1.7;
    final model = Provider.of<HomeViewModel>(context);

    return Container(
      height: height,
      child: Swiper(
        onIndexChanged: (index) {
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
            child: (index == 0)
                ? AbaSaldo(height: height)
                : (index == 1)
                    ? AbaMain2(
                        height: height,
                      )
                    : (index == 2)
                        ? AbaMain3(
                            height: height,
                          )
                        : Container(),
          );
        },
        itemCount: 3,
        loop: false,
      ),
    );
  }
}
