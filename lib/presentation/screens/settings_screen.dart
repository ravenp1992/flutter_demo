import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool appNotification = false;
  bool emailNotification = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            SwitchListTile(
              value: appNotification,
              onChanged: (newValue) {
                setState(() {
                  appNotification = newValue;
                });

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: Duration(milliseconds: 500),
                    content: Text(
                        'App Notification is ${appNotification ? "Enabled" : "Disabled"}'),
                  ),
                );
              },
              title: Text('App Notification'),
            ),
            SwitchListTile(
              value: emailNotification,
              onChanged: (newValue) {
                setState(() {
                  emailNotification = newValue;

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(milliseconds: 500),
                      content: Text(
                          'Email Notification is ${emailNotification ? "Enabled" : "Disabled"}'),
                    ),
                  );
                });
              },
              title: Text('Email Notification'),
            ),
          ],
        ),
      ),
    );
  }
}
