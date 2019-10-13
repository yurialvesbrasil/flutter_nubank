import 'package:flutter/material.dart';
import 'package:flutter_nubank/ui/values/colors.dart' as color;

class ButtonBarList extends StatefulWidget {
  @override
  _ButtonBarListState createState() => _ButtonBarListState();
}

class _ButtonBarListState extends State<ButtonBarList>  with SingleTickerProviderStateMixin{
  AnimationController animationController;
  Animation<double> animation;
  double _w = 95;
  double _h = 100;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 3500),
    )..addListener(() => setState(() {}));
    final Animation curve = CurvedAnimation(
        parent: animationController, curve: Curves.elasticInOut);
    animation = Tween<double>(begin: 400, end: 0).animate(curve);
   animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(animation.value, 0.0, 0.0),
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
