import 'package:flutter/material.dart';
import 'package:flutter_nubank/core/view_models/home_view_model.dart';
import 'package:flutter_nubank/ui/widgets/expanded_perfil_container.dart';
import 'package:provider/provider.dart';

import '../values/styles.dart';
import '../values/values.dart';

class AppBarPerfil extends StatefulWidget {
  const AppBarPerfil({
    Key key,
  }) : super(key: key);

  @override
  _AppBarPerfilState createState() => _AppBarPerfilState();
}

class _AppBarPerfilState extends State<AppBarPerfil>
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
    final model = Provider.of<HomeViewModel>(context);

    return Column(children: <Widget>[
      GestureDetector(
        onTap: () {
          if (!model.perfil_expanded)
            animationController.forward();
          else
            animationController.reverse();
          model.setPerfilExpanded(!model.perfil_expanded);
        },
        child: (MediaQuery.of(context).size.height <= 400)
            ? Container(
                height: 65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/icons/logo.png',
                      height: LOGO_HEIGHT,
                    ),
                    Text(
                      "Yuri",
                      style: AppTheme.heading,
                    ),
                    SizedBox(width: 8),
                    Image.asset(
                      model.perfil_expanded
                          ? 'assets/icons/expand_less.png'
                          : 'assets/icons/expand_more.png',
                      height: 15,
                      width: 25,
                    ),
                  ],
                ))
            : Container(
                height: 85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/icons/logo.png',
                          height: LOGO_HEIGHT,
                        ),
                        Text(
                          "Yuri",
                          style: AppTheme.heading,
                        ),
                      ],
                    ),
                    Expanded(
                      child: Image.asset(
                        model.perfil_expanded
                            ? 'assets/icons/expand_less.png'
                            : 'assets/icons/expand_more.png',
                        height: 15,
                        width: 25,
                      ),
                    ),
                  ],
                )),
      ),
      ExpandedPerfilContainer(
        animation: animation,
      ),
    ]);
  }
}
