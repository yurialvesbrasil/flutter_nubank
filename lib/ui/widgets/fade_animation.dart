import 'package:flutter/material.dart';
import 'package:flutter_nubank/core/view_models/home_view_model.dart';
import 'package:provider/provider.dart';

class FadeAnimation extends StatefulWidget {
  final Widget child;

  FadeAnimation({this.child});

  @override
  _FadeAnimationState createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);

    return AnimatedOpacity(
        // If the widget is visible, animate to 0.0 (invisible).
        // If the widget is hidden, animate to 1.0 (fully visible).
        opacity: model.perfil_expanded ? 1.0 : 0.0,
        duration: Duration(milliseconds: 300),
        // The green box must be a child of the AnimatedOpacity widget.
        child: widget.child);
  }
}
