import 'package:flutter/material.dart';
import 'package:flutter_nubank/core/view_models/home_view_model.dart';
import 'package:flutter_nubank/ui/values/colors.dart' as color;
import 'package:provider/provider.dart';

class CustomSwiperPagination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);

    return Container(
      margin: EdgeInsets.only(top: 16, bottom: 16),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundColor:
                (model.indexMainPage == 0) ? Colors.white : color.dividerColor,
            radius: 2,
          ),
          SizedBox(
            width: 2,
          ),
          CircleAvatar(
            backgroundColor:
                (model.indexMainPage == 1) ? Colors.white : color.dividerColor,
            radius: 2,
          ),
          SizedBox(
            width: 2,
          ),
          CircleAvatar(
            backgroundColor:
                (model.indexMainPage == 2) ? Colors.white : color.dividerColor,
            radius: 2,
          )
        ],
      ),
    );
  }
}
