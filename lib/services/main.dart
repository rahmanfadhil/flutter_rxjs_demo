import 'package:flutter/material.dart';
import './counter_service.dart';

class StateContainer extends InheritedWidget {
  final counterService = CounterService();

  StateContainer({Widget child}) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static StateContainer of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(StateContainer);
  }
}
