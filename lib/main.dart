import 'package:flutter/material.dart';

import './services/main.dart';
import './side_drawer.dart';
import './todos_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: SideDrawer(),
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
