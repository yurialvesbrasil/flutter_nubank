import 'package:flutter/material.dart';
import 'package:flutter_nubank/core/view_models/home_view_model.dart';
import 'package:flutter_nubank/ui/values/colors.dart';
import 'package:flutter_nubank/ui/values/styles.dart';
import 'package:flutter_nubank/ui/widgets/fab_progress_bar.dart';
import 'package:provider/provider.dart';

class AbaSaldo extends StatelessWidget {
  final double height;

  const AbaSaldo({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);
    return Container(
        child: Column(children: <Widget>[
      Row(children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.white,
            height: (((height / 4) - 16) * 3) + 16,
            child: Column(
              children: <Widget>[
                Padding(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 24, 16, 24),
                        child: Image.asset(
                          "assets/icons/icon_perfil_cartao.png",
                          color: Colors.grey,
                          height: 30,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Cartão de crédito",
                          style: AppTheme.display22,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(8),
                ),
                Padding(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        "FATURA ATUAL",
                        style: AppTheme.display3,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text.rich(
                        TextSpan(
                          // default text style
                          children: <TextSpan>[
                            TextSpan(text: "R\$ ", style: AppTheme.display41),
                            TextSpan(
                                text: model.cliente.valor_fatura
                                    .toString()
                                    .substring(0, 4)
                                    .replaceAll('.', ','),
                                style: AppTheme.display42),
                            TextSpan(
                                text: model.cliente.valor_fatura
                                    .toString()
                                    .substring(4, 6),
                                style: AppTheme.display41),
                          ],
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text.rich(
                        TextSpan(
                          // default text style
                          children: <TextSpan>[
                            TextSpan(
                                text: "Limite Disponível",
                                style: AppTheme.displayBlack),
                            TextSpan(
                                text: " - R\$ " +
                                    model.cliente.limite_disponivel
                                        .toString()
                                        .replaceAll('.', ','),
                                style: AppTheme.displayVerde),
                          ],
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.fromLTRB(18, 18, 0, 18),
                ),
              ],
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
            child: Container(
                height: ((height / 4) - 24) * 3,
                child: FAProgressBar(
                  backgroundColor: backgroundProgressColor,
                  changeProgressColor: changeColorValueProgressColor,
                  currentValue: 80,
                  direction: Axis.vertical,
                  verticalDirection: VerticalDirection.down,
                  maxValue: 100,
                  size: 10,
                ))),
      ]),
      Row(children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: backgroundGrayColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4)),
            ),
            height: (height / 4) + 16,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 24, 16, 24),
                  child: Image.asset(
                    "assets/icons/bolinhas.png",
                    height: 30,
                  ),
                ),
                Expanded(
                  child: Text(
                    "Compra mais recente em parelamento de fatura (02/Set)",
                    style: AppTheme.display11,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.chevron_right),
                ),
              ],
            ),
          ),
        ),
      ]),
    ]));
  }
}
