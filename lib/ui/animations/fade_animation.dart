import 'package:flutter/material.dart';
import 'package:flutter_nubank/core/view_models/home_view_model.dart';
import 'package:provider/provider.dart';

class FadeAnimation extends StatelessWidget {
  final Widget child;
  final Duration duration;

  FadeAnimation({this.child, this.duration});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);

    return AnimatedOpacity(
        // If the widget is visible, animate to 0.0 (invisible).
        // If the widget is hidden, animate to 1.0 (fully visible).
        opacity: model.perfil_expanded ? 1.0 : 0.0,
        duration: duration,
        // The green box must be a child of the AnimatedOpacity widget.
        child: child);
  }
}
