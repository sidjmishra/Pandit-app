import 'package:firebase_auth/firebase_auth.dart';
import 'package:pandit_app/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

class AuthService {

  //instance of Firebase Auth
  final FirebaseAuth _auth  = FirebaseAuth.instance ;
  final db_ref = FirebaseDatabase.instance.reference();

  //create Custom user object based on Firebase User
  User _userFromFirebase(FirebaseUser user){
    return user != null ? User(uid: user.uid):null ;

  }

  // auth change stream
  Stream <User> get user {
    return _auth.onAuthStateChanged
        .map(_userFromFirebase);
  }



  //register with email and password
  Future registerWithEmailAndPassword(String email,String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email.toString().trim(), password: password.toString().trim()   );
      FirebaseUser user = result.user ;
      return _userFromFirebase(user);


    }
    catch(e){
      print(e.toString());
      return null ;
    }
  }
  //Sign in with email and password
  Future signWithEmailAndPassword(String email,String password) async {
    try {
      email = email.toString().trim() ;
      password = password.toString().trim();
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user ;
      return _userFromFirebase(user);

    }
    catch(e){
      print(e.toString());
      return null ;
    }
  }

  // add data to firestore

  Future addToFirestore(String _name,String _email,String _addr,int _phone,int _pin) async {

    try {
      db_ref.child("users").set({
        'name': _name,
        'email': _email,
        'address': _addr,
        'phone':_phone,
        'pin-code':_pin
      });

//      print("The name is " + _name);
//      Firestore.instance
//          .collection('users')
//          .document(_name)
//          .updateData({
//        'name': _name,
//        'email': _email,
//        'address': _addr,
//        'phone':_phone,
//        'pin-code':_pin
//      });

    }
    catch(e){
      print(e);

    }

  }

  // Sign User Out
  Future signOut ()async {
    try {
        return await _auth.signOut();

    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
}