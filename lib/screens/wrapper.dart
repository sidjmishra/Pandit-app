import 'package:flutter/material.dart';
import 'package:pandit_app/models/user.dart';
import 'package:pandit_app/screens/authenticate/authenticate.dart';
import 'package:pandit_app/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if(user == null){
      return Authenticate();
    }
    else {
      return Home();
    }final user = Provider.of<User>(context);
    if(user == null){
      return Authenticate();
    }
    else {
      return Home();
    }
  }
}
