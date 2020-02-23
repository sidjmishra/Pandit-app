import 'package:flutter/material.dart';
import 'package:pandit_app/services/auth.dart';


class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {

  String _name = "";
  String _email = "";
  String _addr = "";
  int _phone ;
  int _pin ;
  final _formKey = GlobalKey<FormState>();


  void validateAndSubmit() async{
    if (_formKey.currentState.validate()){
      await AuthService().addToFirestore(_name,_email,_addr,_phone,_pin);
    }
    else {
      // na ho paega
    }

    //TODO: Update & Book
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Information"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0,top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Name'),
                      validator: (value){
                        return value.isEmpty ? 'Name is required!!' : null;
                      },
                      cursorColor: Colors.orangeAccent,
                      onChanged: (value){
                        setState(() {
                          _name = value;
                        });

                      },
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Phone"),
                      validator: (value){
                        return value.isEmpty ? 'Phone is required!!' : null;
                      },
                      keyboardType: TextInputType.numberWithOptions(signed: false),
                      cursorColor: Colors.orangeAccent,
                      onChanged: (value){
                        setState(() {
                          _phone = int.parse(value);
                        });

                      },
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Email Address"),
                      validator: (value){
                        return value.isEmpty ? 'Email is required!!' : null;
                      },
                      cursorColor: Colors.orangeAccent,
                      onChanged: (value){
                        setState(() {
                          _email = value;
                        });
                      },
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Address"),
                      validator: (value){
                        return value.isEmpty ? 'Address is required!!' : null;
                      },
                      cursorColor: Colors.orangeAccent,
                      onChanged: (value){
                        setState(() {
                          _addr = value;
                        });

                      },
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Pincode"),
                      validator: (value){
                        return value.isEmpty ? 'Pincode is required!!' : null;
                      },
                      keyboardType: TextInputType.numberWithOptions(signed: false),
                      cursorColor: Colors.orangeAccent,
                      onChanged: (value){
                        setState(() {
                          _pin = int.parse(value);
                        });

                      },
                    )

                  ],
                ),
              ),

              SizedBox(height: 20.0),

              SizedBox(height: 20.0),
              RaisedButton(
                child: Text('Book', style: TextStyle(fontSize: 15.0),),
                textColor: Colors.white,
                color: Colors.orangeAccent,
                onPressed: validateAndSubmit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}