import 'package:flutter/material.dart';

import '../../services/main.dart';
import '../../services/todo_service.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TodoService todoService = StateContainer.of(context).todoService;

    return StreamBuilder(
      stream: todoService.stream$,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(snapshot.data[index]),
                onTap: () {},
              );
            },
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
