import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'DrawerMenu.dart';
import 'PoojaList.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {

  void ingre() {
    setState(() {
      Alert(
          context: context,
          title: "Name",
          desc: "Do you want to logout?",
          buttons: [
            DialogButton(
              child: Text(
                "Logout",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                ),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            ),
            DialogButton(
              child: Text(
                "Cancel",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                ),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            ),
          ]
      ).show();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.orange,
                image: DecorationImage(
                  image: AssetImage("images/blog_icon.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return MenuPage();
                  },
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Pooja List'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return PooList();
                  },
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Feedback'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return FeedPage();
                  },
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: ingre,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(

      ),
    );
  }
}