import 'package:flutter/material.dart';
import 'package:flutter_nubank/ui/values/colors.dart';
import 'package:flutter_nubank/ui/values/styles.dart';

class AbaMain2 extends StatelessWidget {
  final double height;

  const AbaMain2({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 24),
              child: Image.asset(
                "assets/icons/dolar.png",
                color: Colors.grey,
                height: 30,
              ),
            ),
            Text(
              "Seu dinheiro sempre rendendo.",
              style: AppTheme.displayBlackBig,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Você está deixando de ganhar dinheiro sem um NuConta.",
              style: AppTheme.displayMiddle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 18,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(width: .8, color: primaryColor),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(6)),
                ),
                child: Text("COMEÇA A NUCONTA",
                    style: AppTheme.displayPrimaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
