import 'package:flutter/material.dart';

import './services/todo_service.dart';
import './services/main.dart';

class TodosManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TodosManager();
  }
}

class _TodosManager extends State<TodosManager> {
  final TextEditingController _todosInputController = TextEditingController();
  final FocusNode _todosInputFocusNode = FocusNode();

  @override
  void dispose() {
    _todosInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TodoService todoService = StateContainer.of(context).todoService;

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _todosInputController,
                focusNode: _todosInputFocusNode,
                decoration: InputDecoration(labelText: "New todo"),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                child: RaisedButton(
                  child: Text('Add todo'),
                  onPressed: () {
                    if (_todosInputController.text == '') {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Don\'t get to hurry!'),
                            content: Text('You miss out the todo title'),
                            actions: <Widget>[
                              FlatButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text('Got it!'),
                              )
                            ],
                          );
                        },
                      );
                    }
                    todoService.addTodo(_todosInputController.text);
                    _todosInputController.text = '';
                    _todosInputFocusNode.unfocus();
                  },
                ),
              ),
            ],
          ),
        ),
        StreamBuilder(
          stream: todoService.stream$,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Expanded(
                child: ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(snapshot.data[index]),
                      onTap: () {},
                    );
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
