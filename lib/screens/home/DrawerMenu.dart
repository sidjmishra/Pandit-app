import 'package:flutter/material.dart';
import 'package:pandit_app/screens/home/BookPage.dart';
import 'package:pandit_app/screens/home/Feedback.dart';
import 'package:pandit_app/screens/home/PoojaList.dart';
import 'package:pandit_app/services/auth.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {

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
                onPressed: ()async{
                  await AuthService().signOut() ;
                  Navigator.of(context).pop();
                },
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

    void book() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return Booking();
        },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu', style: TextStyle(fontSize: 20.0)),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Image.asset("assets/pandit_home.png"),
            Card(
              margin: EdgeInsets.all(10.0),
              child: Text("Flutter widgets are built using a modern framework that takes inspiration from React. The central idea is that you build your UI out of widgets. Widgets describe what their view should look like given their current configuration and state. "
                  "\nWhen a widget’s state changes, the widget rebuilds its description, which the framework diffs against the previous description in order to determine the minimal changes needed in the underlying render tree to transition from one state to the next."
                  "\nThe runApp() function takes the given Widget and makes it the root of the widget tree. "
                  "\nIn this example, the widget tree consists of two widgets, the Center widget and its child, the Text widget. "
                  "\nThe framework forces the root widget to cover the screen, which means the text “Hello, world” ends up centered on screen. "
                  "\nThe text direction needs to be specified in this instance; when the MaterialApp widget is used, this is taken care of for you, as demonstrated later."),
            ),
            RaisedButton(
              child: Text("Book Pandit"),
              color: Colors.orangeAccent,
              onPressed: book,
            ),
          ],
        ),
      ),
    );
  }
}

