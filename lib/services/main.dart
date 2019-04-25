import 'package:flutter/material.dart';

import './counter_service.dart';
import './todo_service.dart';

class StateContainer extends InheritedWidget {
  final counterService = CounterService();
  final todoService = TodoService();

  StateContainer({Widget child}) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static StateContainer of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(StateContainer);
  }
}
