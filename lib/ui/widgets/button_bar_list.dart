import 'package:flutter/material.dart';
import 'package:flutter_nubank/core/models/item_botton.dart';
import 'package:flutter_nubank/ui/values/colors.dart' as color;
import 'package:flutter_nubank/ui/values/styles.dart';

class ButtonBarList extends StatelessWidget {
  final List<ItemButton> itensButton;

  const ButtonBarList({Key key, @required this.itensButton}) : super(key: key);

  Widget _buildItem(BuildContext context, int index) {
    double _w = 100;

    return Row(
      children: <Widget>[
        Container(
          width: _w,
          decoration: BoxDecoration(
            color: color.itemBottonColor,
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 4),
                child: Image.asset(
                  itensButton[index].url_item,
                  height: 30,
                ),
              ),
              SizedBox(height: 12.0),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: Text(
                  itensButton[index].titulo,
                  softWrap: true,
                  maxLines: 2,
                  style: AppTheme.displaySmall,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 8,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double _h = 100;
    double left = 16;
    return Container(
      margin: EdgeInsets.fromLTRB(left, 8, 0, 16),
      width: MediaQuery.of(context).size.width - 16,
      height: _h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: _buildItem,
        itemCount: itensButton.length,
      ),
    );
  }
}
