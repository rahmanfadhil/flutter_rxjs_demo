import 'package:flutter/material.dart';

import '../widgets/shared/side_drawer.dart';
import '../widgets/todos/todo_input.dart';
import '../widgets/todos/todo_list.dart';

class TodosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Manage Todos'),
      ),
      body: Column(
        children: <Widget>[
          TodoInput(),
          Expanded(child: TodoList()),
        ],
      ),
    );
  }
}
