import 'package:flutter/material.dart';

import './services/todo_service.dart';
import './services/main.dart';

class TodosManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TodoService todoService = StateContainer.of(context).todoService;

    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('Add todo'),
          onPressed: () => todoService.addTodo("hello"),
        ),
        StreamBuilder(
          stream: todoService.stream$,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data != null) {
              return Expanded(
                child: ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(title: Text(snapshot.data[index]));
                  },
                ),
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ],
    );
  }
}
