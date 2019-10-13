import 'package:flutter/material.dart';
import 'package:flutter_nubank/ui/values/colors.dart' as color;

class CustomSwiperPagination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 8),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: color.dividerColor,
            radius: 2,
          ),
          SizedBox(
            width: 2,
          ),
          CircleAvatar(
            backgroundColor: color.dividerColor,
            radius: 2,
          ),
          SizedBox(
            width: 2,
          ),
          CircleAvatar(
            backgroundColor: color.dividerColor,
            radius: 2,
          )
        ],
      ),
    );
  }
}
