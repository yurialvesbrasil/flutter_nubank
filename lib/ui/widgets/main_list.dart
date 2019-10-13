import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MainList extends StatefulWidget {
  @override
  _MainListState createState() => _MainListState();
}

class _MainListState extends State<MainList>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
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
    //print(animation.value.toString());
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      Container(
        transform: Matrix4.translationValues(animation.value, 0.0, 0.0),
        height: MediaQuery.of(context).size.height / 1.7,
        child: Swiper(
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
      ),
    ]));
  }
}
