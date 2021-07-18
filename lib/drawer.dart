import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Charleston Pride',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => Navigator.pushNamed(context, '/')),
          ListTile(
              leading: Icon(Icons.article),
              title: Text('Welcome & Proclamation'),
              onTap: () => Navigator.pushNamed(context, '/welcome')),
          ListTile(
              leading: Icon(Icons.people),
              title: Text('Our Sponsors'),
              onTap: () => Navigator.pushNamed(context, '/sponsors')),
          ListTile(
              leading: Icon(Icons.event),
              title: Text('Schedule of Events'),
              onTap: () => Navigator.pushNamed(context, '/schedule')),
          ListTile(
              leading: Icon(Icons.people),
              title: Text('Our Team'),
              onTap: () => Navigator.pushNamed(context, '/our-team')),
          ListTile(
              leading: Icon(Icons.emoji_events),
              title: Text('Awards'),
              onTap: () => Navigator.pushNamed(context, '/awards')),
          ListTile(
              leading: Icon(Icons.flag),
              title: Text('Parade'),
              onTap: () => Navigator.pushNamed(context, '/parade')),
          ListTile(
              leading: Icon(Icons.celebration),
              title: Text('Festival'),
              onTap: () => Navigator.pushNamed(context, '/festival')),
          ListTile(
              leading: Icon(Icons.liquor),
              title: Text('Prism'),
              onTap: () => Navigator.pushNamed(context, '/prism')),
          ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () => showAboutDialog(
                      context: context,
                      applicationVersion: "0.0.1",
                      applicationLegalese:
                          'Copyright © 2021 Charleston Pride Festival, Inc. All Rights Reserved.',
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text(
                                "Charleston Pride Festival, Inc. is a 501(c)(3) public charity under the Internal Revenue Service Code of 1986 and the State of South Carolina.",
                                style: TextStyle(
                                  fontSize: 12,
                                )))
                      ]))
        ],
      ),
    );
  }
}
