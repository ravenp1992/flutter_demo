import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      drawer: _buildDrawer(context),
      body: _buildBody(),
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(color: Colors.indigo),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home Page'),
            onTap: () {
              Navigator.of(context).pushNamed('/');
            },
          ),
          ListTile(
            leading: Icon(Icons.api),
            title: Text('Api Demo'),
            onTap: () => Navigator.of(context).pushNamed('/api_demo'),
          ),
          ListTile(
            leading: Icon(Icons.wifi),
            title: Text('Internet Connectivity Demo'),
            onTap: () => Navigator.of(context).pushNamed('/connectivity'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => Navigator.of(context).pushNamed('/settings'),
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Container(
        child: Text('Home Screen'),
      ),
    );
  }
}
