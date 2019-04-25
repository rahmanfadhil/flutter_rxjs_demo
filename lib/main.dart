import 'package:flutter/material.dart';

import './services/main.dart';
import './counter_manager.dart';
import './todos_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Inherited Widget'),
        ),
        body: StateContainer(
          child: TodosManager(),
        ),
      ),
    );
  }
}
