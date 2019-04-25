import 'package:flutter/material.dart';

import './blocs/counter_bloc.dart';

class CounterManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String hello = CounterBloc.of(context).hello;

    print(hello);

    return Center(
      child: Text('Counter manager'),
    );
  }
}
