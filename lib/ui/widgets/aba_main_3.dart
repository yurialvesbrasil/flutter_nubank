import 'package:flutter/material.dart';
import 'package:flutter_nubank/ui/values/colors.dart';
import 'package:flutter_nubank/ui/values/styles.dart';

class AbaMain3 extends StatelessWidget {
  final double height;

  const AbaMain3({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Image.asset(
                "assets/icons/presente.png",
                color: Colors.grey,
                height: 30,
              ),
            ),
            Text(
              "Nubank Rewards",
              style: AppTheme.displayBlackBig,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usa.",
              style: AppTheme.displayMiddle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
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
                child: Text("ATIVE O SEU REWARDS",
                    style: AppTheme.displayPrimaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
