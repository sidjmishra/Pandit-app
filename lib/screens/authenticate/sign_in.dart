import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandit_app/screens/authenticate/sign_up.dart';
import 'package:pandit_app/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
//  @override
//  Widget build(BuildContext context) {
//    return Container();
//  }
  final AuthService _auth = AuthService();
  bool _isSelected = false;

  String email,password ;
  final _formKey = GlobalKey<FormState>();

  void _radio() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  Widget radioButton(bool isSelected) => Container(
    width: 16.0,
    height: 16.0,
    padding: EdgeInsets.all(2.0),
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2.0, color: Colors.black)),
    child: isSelected
        ? Container(
      width: double.infinity,
      height: double.infinity,
      decoration:
      BoxDecoration(shape: BoxShape.circle, color: Colors.black),
    )
        : Container(),
  );

  Widget horizontalLine() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Container(
      width: ScreenUtil.getInstance().setWidth(120),
      height: 1.0,
      color: Colors.black26.withOpacity(.2),
    ),
  );

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return  Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Image(
                  image: AssetImage("assets/pandit_image.png"),
                  height: 170.0,
                )
              ),
              Expanded(
                child: Container(),
              ),
//              Image.asset("assets/image_02.png")
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
//                      Image.asset(
//                        "assets/logo.png",
//                        width: ScreenUtil.getInstance().setWidth(110),
//                        height: ScreenUtil.getInstance().setHeight(110),
//                      ),
//                      Text("Pandit App",
//                          style: TextStyle(
//                              fontFamily: "Poppins-Bold",
//                              fontSize: ScreenUtil.getInstance().setSp(46),
//                              letterSpacing: .6,
//                              fontWeight: FontWeight.bold))
                    ],
                  ),

                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(280),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Login",
                          style: TextStyle(
                              fontSize: ScreenUtil.getInstance().setSp(45),
                              fontFamily: "Poppins-Bold",
                              fontWeight: FontWeight.w900,
                              letterSpacing: .6)),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: ScreenUtil.getInstance().setHeight(500),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, 15.0),
                              blurRadius: 15.0),
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, -10.0),
                              blurRadius: 10.0),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(30),
                          ),
                          Text("Email",
                              style: TextStyle(
                                  fontFamily: "Poppins-Medium",
                                  fontSize: ScreenUtil.getInstance().setSp(26))),
                         Form(
                           key: _formKey,
                           child: Column(
                             children: <Widget>[
                               TextFormField(
                                   validator: (value) {
                                     if (value.isEmpty) {
                                       return 'Please enter youe email';
                                     }
                                     return null;
                                   },
                                   decoration: InputDecoration(
                                       hintText: "you@gmail.com",
                                       hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
                                   onChanged: (val){
                                     setState(() {
                                       email = val ;
                                       print(email);
                                     });
                                   }

                               ),
                               SizedBox(
                                 height: ScreenUtil.getInstance().setHeight(30),
                               ),
                               Row(
                                 children: <Widget>[
                                   Text("Password",
                                       style: TextStyle(
                                           fontFamily: "Poppins-Medium",
                                           fontSize: ScreenUtil.getInstance().setSp(26))),
                                 ],
                               ),
                               TextFormField(
                                 validator: (val) => val.isEmpty || val.length < 8 ? 'Enter a password of atleast 8 characters' : null,
                                 obscureText: true,
                                 decoration: InputDecoration(
                                     hintText: "your password",
                                     hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
                                 onChanged: (val){
                                   setState(() {
                                     password = val ;
                                     print(password);
                                   });
                                 },
                               ),
                             ],
                           ),
                         ),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(35),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontFamily: "Poppins-Medium",
                                    fontSize: ScreenUtil.getInstance().setSp(28)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 12.0,
                          ),
                          GestureDetector(
                            onTap: _radio,
                            child: radioButton(_isSelected),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text("Remember me",
                              style: TextStyle(
                                  fontSize: 12, fontFamily: "Poppins-Medium"))
                        ],
                      ),
                      InkWell(
                        child: Container(
                          width: ScreenUtil.getInstance().setWidth(330),
                          height: ScreenUtil.getInstance().setHeight(100),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xFFf5d020),
                                Color(0xFFf53803)
                              ]),
                              borderRadius: BorderRadius.circular(6.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFF6078ea).withOpacity(.3),
                                    offset: Offset(0.0, 8.0),
                                    blurRadius: 8.0)
                              ]),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: ()async {
                                if(_formKey.currentState.validate()){
                                  print(email);
                                  dynamic result = await _auth.signWithEmailAndPassword(email, password);

                                  if(result == null){

                                  }
                                  else {
                                    print(result);
                                  }

                                }
                              },
                              child: Center(
                                child: Text("SIGN IN",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins-Bold",
                                        fontSize: 18,
                                        letterSpacing: 1.0)),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      horizontalLine(),
                      Text("Social Login",
                          style: TextStyle(
                              fontSize: 16.0, fontFamily: "Poppins-Medium")),
                      horizontalLine()
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
//                  Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                      SocialIcon(
//                        colors: [
//                          Color(0xFF102397),
//                          Color(0xFF187adf),
//                          Color(0xFF00eaf8),
//                        ],
//                        iconData: CustomIcons.facebook,
//                        onPressed: () {},
//                      ),
//                      SocialIcon(
//                        colors: [
//                          Color(0xFFff4f38),
//                          Color(0xFFff355d),
//                        ],
//                        iconData: CustomIcons.googlePlus,
//                        onPressed: () {},
//                      ),
//                      SocialIcon(
//                        colors: [
//                          Color(0xFF17ead9),
//                          Color(0xFF6078ea),
//                        ],
//                        iconData: CustomIcons.twitter,
//                        onPressed: () {},
//                      ),
//                      SocialIcon(
//                        colors: [
//                          Color(0xFF00c6fb),
//                          Color(0xFF005bea),
//                        ],
//                        iconData: CustomIcons.linkedin,
//                        onPressed: () {},
//                      )
//                    ],
//                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "New User? ",
                        style: TextStyle(fontFamily: "Poppins-Medium"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                        },
                        child: Text("Sign Up",
                            style: TextStyle(
                                color: Color(0xFFfc7b01),
                                fontFamily: "Poppins-Bold")),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
