import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          hintStyle: TextStyle(color:Colors.black54, fontWeight: FontWeight.w700),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          hintStyle: TextStyle(color:Colors.black54, fontWeight: FontWeight.w700),

          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),),
    );
    final _loginButton = Material(
      elevation: 10.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.orangeAccent[400],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Continue to Homepage",
            textAlign: TextAlign.center,
            style:GoogleFonts.oswald(color:Colors.white,textStyle:Theme.of(context).textTheme.headline5, fontWeight: FontWeight.w500)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        centerTitle: true,
        title:Text(widget.title, style:GoogleFonts.oswald(color:Colors.white,textStyle:Theme.of(context).textTheme.headline5, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueGrey[900],
        elevation: 0,
      ),
      backgroundColor: Colors.orangeAccent[400],
      body: SingleChildScrollView(
        child: Column(
          children: [

            Image.asset(
              'assets/logo.jpeg',
              height:250,
            ),

            Container(
              decoration: new BoxDecoration(color: Colors.blueGrey[500],),
              child:Center(
                child: Container(

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(36.0, 0.0, 36.0, 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style:GoogleFonts.oswald(color:Colors.white,textStyle:Theme.of(context).textTheme.headline3, fontWeight: FontWeight.w300),

                        ),
                        SizedBox(height: 5.0),
                        emailField,
                        SizedBox(height: 25.0),
                        passwordField,
                        SizedBox(
                          height: 35.0,
                        ),
                        _loginButton,

                      ],
                    ),
                  ),
                ),
              ) ,

            ),
          ],
        ),
      ),
    );
  }
}
