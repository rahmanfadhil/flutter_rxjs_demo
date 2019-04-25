import 'package:flutter/material.dart';

import './todo_input.dart';
import './todo_list.dart';

class TodosManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TodoInput(),
        Expanded(child: TodoList()),
      ],
    );
  }
}
