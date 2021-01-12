import 'package:flutter/material.dart';
import 'package:flutter_side_menu/about.dart';
import 'package:flutter_side_menu/contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Side Menu Flutter'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('irfan'),
              accountEmail: Text('irfanshukri203@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/200'),
              ),
            ),
            ListTile(
              title: Text('About Page'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return About();
                    },
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('Contact Page'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return Contact();
                    },
                  ),
                );
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
