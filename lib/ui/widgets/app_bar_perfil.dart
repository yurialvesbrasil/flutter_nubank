import 'package:flutter/material.dart';
import 'package:flutter_nubank/core/view_models/home_view_model.dart';
import 'package:provider/provider.dart';

import '../values/styles.dart';
import '../values/values.dart';

class AppBarPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);
    return GestureDetector(
      onTap: () => model.setPerfilExpanded(!model.perfil_expanded),
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
                  Expanded(
                    child: Image.asset(
                      model.perfil_expanded
                          ? 'assets/icons/expand_less.png'
                          : 'assets/icons/expand_more.png',
                      height: 15,
                      width: 25,
                    ),
                  )
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
    );
  }
}
