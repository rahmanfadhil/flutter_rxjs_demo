import 'package:flutter/material.dart';

import './services/main.dart';
// import './counter_manager.dart';
import './todos_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                accountName: Text('Rahman Fadhil'),
                accountEmail: Text('rhmnfadhil@gmail.com'),
              ),
              ListTile(
                trailing: Icon(Icons.list),
                title: Text('Manage Todos'),
                onTap: () {},
              ),
              ListTile(
                trailing: Icon(Icons.account_circle),
                title: Text('My Account'),
                onTap: () {},
              ),
              ListTile(
                trailing: Icon(Icons.settings),
                title: Text('Preferences'),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                trailing: Icon(Icons.lock_outline),
                title: Text('Hello world'),
                onTap: () {},
              )
            ],
          ),
        ),
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
