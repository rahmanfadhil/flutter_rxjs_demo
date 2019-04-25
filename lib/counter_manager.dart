import 'package:flutter/material.dart';

import './blocs/counter_bloc.dart';

class CounterManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc bloc = CounterBloc.of(context);

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Column(
          children: <Widget>[
            Text(bloc.counter.toString()),
            RaisedButton(
              child: Text('Increase'),
              onPressed: () => setState(() => bloc.increment()),
            ),
            RaisedButton(
              child: Text('Decrease'),
              onPressed: () => setState(() => bloc.decrement()),
            )
          ],
        );
      },
    );
  }
}
