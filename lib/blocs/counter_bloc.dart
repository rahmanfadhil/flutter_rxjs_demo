import 'package:flutter/material.dart';

class CounterBloc extends InheritedWidget {
  final String hello = 'world';

  CounterBloc({Widget child}) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static CounterBloc of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(CounterBloc);
  }
}
