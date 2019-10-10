import 'package:flutter/material.dart';
import 'package:flutter_nubank/core/view_models/home_view_model.dart';
import 'package:flutter_nubank/ui/values/styles.dart';
import 'package:provider/provider.dart';

import '../values/colors.dart';

class ExpandedPerfilContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(32, 18, 32, 0),
        height: model.perfil_expanded
            ? MediaQuery.of(context).size.height / 1.75
            : 0,
        child: Column(
          children: <Widget>[
            Divider(
              color: dividerColor,
              height: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Image.asset(
                  'assets/icons/icon_perfil_question.png',
                  height: 30,
                ),
                SizedBox(width: 10),
                Text("Me ajuda", style: AppTheme.display2)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: dividerColor,
              height: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Image.asset(
                  'assets/icons/icon_perfil_person.png',
                  height: 30,
                ),
                SizedBox(width: 10),
                Text("Perfil", style: AppTheme.display2)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: dividerColor,
              height: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Image.asset(
                  'assets/icons/icon_perfil_cartao.png',
                  height: 30,
                ),
                SizedBox(width: 10),
                Text("Configurar Cartão", style: AppTheme.display2)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: dividerColor,
              height: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Image.asset(
                  'assets/icons/icon_perfil_app.png',
                  height: 30,
                ),
                SizedBox(width: 10),
                Text("Configurações do app", style: AppTheme.display2)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: dividerColor,
              height: 2,
            ),
            SizedBox(
              height: 28,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(width: .5, color: dividerColor),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(8)),
                ),
                child: Text("SAIR DA CONTA", style: AppTheme.display1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
