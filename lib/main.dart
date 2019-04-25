import 'package:flutter/material.dart';

import './services/main.dart';
import './pages/todos_page.dart';
import './pages/counter_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateContainer(
      child: MaterialApp(
        routes: {
          '/': (BuildContext context) => TodosPage(),
          '/counter': (BuildContext context) => CounterPage(),
        },
      ),
    );
  }
}
