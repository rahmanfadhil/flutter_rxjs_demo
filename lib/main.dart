import 'package:flutter/material.dart';
import './blocs/counter_bloc.dart';

import './counter_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Inherited Widget'),
        ),
        body: CounterBloc(child: CounterManager()),
      ),
    );
  }
}
