import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            onTap: () => Navigator.pushReplacementNamed(context, '/'),
          ),
          ListTile(
            trailing: Icon(Icons.add_alarm),
            title: Text('Click Counter'),
            onTap: () => Navigator.pushReplacementNamed(context, '/counter'),
          ),
          ListTile(
            trailing: Icon(Icons.settings),
            title: Text('Preferences'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            trailing: Icon(Icons.lock_outline),
            title: Text('Log Out'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
