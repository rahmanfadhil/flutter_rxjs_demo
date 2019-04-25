import 'package:flutter/material.dart';

import './services/main.dart';
import './services/counter_service.dart';

class CounterManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterService counterService =
        StateContainer.of(context).counterService;

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
