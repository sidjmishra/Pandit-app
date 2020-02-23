import 'package:flutter/material.dart';
import 'package:pandit_app/screens/wrapper.dart';
import 'package:pandit_app/services/auth.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';
void main() => runApp(MyApp(
  
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}

