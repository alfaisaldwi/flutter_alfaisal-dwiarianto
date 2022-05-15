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

class SlideLeftRoute extends PageRouteBuilder {
  final Widget widget;
  SlideLeftRoute({required this.widget})
      : super(
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionDuration: Duration(seconds: 1),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(-1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            });
}
