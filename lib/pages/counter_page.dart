import 'package:flutter/material.dart';

import '../widgets/shared/side_drawer.dart';
import '../widgets/counter/counter_manager.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Manage Todos'),
      ),
      body: CounterManager(),
    );
  }
}
