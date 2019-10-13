import 'package:flutter/material.dart';
import 'package:flutter_nubank/ui/values/colors.dart' as color;

class ButtonBarList extends StatelessWidget {
  double _w = 95;
  double _h = 100;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(18,8,0,16),
      width: MediaQuery.of(context).size.width,
      height: _h,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: _w,
            decoration: BoxDecoration(
              color: color.itemBottonColor,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
          SizedBox(width: 8,),
          Container(
            width: _w,
            decoration: BoxDecoration(
              color: color.itemBottonColor,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
          SizedBox(width: 8,),
          Container(
            width: _w,
            decoration: BoxDecoration(
              color: color.itemBottonColor,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
          SizedBox(width: 8,),
          Container(
            width: _w,
            decoration: BoxDecoration(
              color: color.itemBottonColor,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
          SizedBox(width: 8,),
          Container(
            width: _w,
            decoration: BoxDecoration(
              color: color.itemBottonColor,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
        ],
      ),
    );
  }
}
