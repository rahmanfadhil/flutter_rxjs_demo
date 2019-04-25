import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import './blocs/counter_bloc.dart';

GetIt getIt = GetIt();

void main() {
  getIt.registerSingleton<Counter>(Counter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Inherited Widget'),
        ),
        body: CounterManager(),
      ),
    );
  }
}

class CounterManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterService = getIt.get<Counter>();

    return Column(
      children: <Widget>[
        StreamBuilder(
          stream: counterService.stream$,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return Text(snapshot.data.toString());
          },
        ),
        RaisedButton(
          child: Text('Increase'),
          onPressed: () => counterService.increment(),
        ),
        RaisedButton(
          child: Text('Decrease'),
          onPressed: () => counterService.decrement(),
        )
      ],
    );
  }
}
