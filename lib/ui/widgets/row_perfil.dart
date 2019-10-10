import 'package:flutter/material.dart';

import '../values/styles.dart';

// left_url = 'assets/icons/icon_perfil_question.png';
// text = "Me ajuda"
class RowPerfil extends StatelessWidget {
  final String left_url;
  final String text;

  RowPerfil({this.left_url, this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(
          left_url,
          height: 30,
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: Container(
            child: Text(text, style: AppTheme.display2),
          ),
        ),
        SizedBox(width: 10),
        Icon(
          Icons.keyboard_arrow_right,
          color: Colors.white,
        )
      ],
    );
  }
}
