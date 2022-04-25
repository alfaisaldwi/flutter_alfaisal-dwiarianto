import 'package:flutter/cupertino.dart';

class transitionClass extends PageRouteBuilder {
  final Widget widget;
  transitionClass({required this.widget})
      : super(
          transitionDuration: Duration(seconds: 1),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            animation =
                CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
            return ScaleTransition(
                scale: animation, alignment: Alignment.center, child: child);
          },
          pageBuilder: (BuildContext, Animation<double> animation,
              Animation<double> secAnimation) {
            return widget;
          },
        );
}
