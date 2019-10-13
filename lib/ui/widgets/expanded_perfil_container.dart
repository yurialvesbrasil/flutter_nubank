import 'package:flutter/material.dart';
import 'package:flutter_nubank/ui/values/styles.dart';
import 'package:flutter_nubank/ui/widgets/row_perfil.dart';

import '../values/colors.dart';
import '../animations/fade_animation.dart';

class ExpandedPerfilContainer extends StatelessWidget {
  final Animation<double> animation;

  ExpandedPerfilContainer({this.animation});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(32, 18, 32, 0),
      height: (animation.value * (MediaQuery.of(context).size.height / 1.75)),
      child: FadeAnimation(
        duration: Duration(milliseconds: 300),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Divider(
                color: dividerColor,
                height: 2,
              ),
              SizedBox(
                height: 10,
              ),
              RowPerfil(
                left_url: 'assets/icons/icon_perfil_question.png',
                text: "Me ajuda",
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
              RowPerfil(
                left_url: 'assets/icons/icon_perfil_person.png',
                text: "Perfil",
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
              RowPerfil(
                left_url: 'assets/icons/icon_perfil_cartao.png',
                text: "Configurar Cartão",
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
              RowPerfil(
                left_url: 'assets/icons/icon_perfil_app.png',
                text: "Configurações do app",
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
                    border: Border.all(width: .2, color: dividerColor),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(6)),
                  ),
                  child: Text("SAIR DA CONTA", style: AppTheme.display1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
