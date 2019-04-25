import 'package:flutter/material.dart';

import './services/main.dart';
import './services/todo_service.dart';

class TodoInput extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TodoInputState();
  }
}

class _TodoInputState extends State<TodoInput> {
  final TextEditingController _todosInputController = TextEditingController();
  final FocusNode _todosInputFocusNode = FocusNode();

  @override
  void dispose() {
    _todosInputController.dispose();
    _todosInputFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TodoService todoService = StateContainer.of(context).todoService;

    return Container(
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
                } else {
                  todoService.addTodo(_todosInputController.text);
                  _todosInputController.text = '';
                  _todosInputFocusNode.unfocus();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
