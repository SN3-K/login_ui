import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:login_ui/tos.dart';
//import 'package:login_ui/pp.dart';
import 'package:login_ui/login.dart';
import 'package:login_ui/register.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: 'Grep-IT! Client Portal'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
      body:SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.jpeg',
              height:250,
            ),

            Container(
              decoration: new BoxDecoration(color: Colors.blueGrey[600],),
              child:Column(
                children: [
                  SizedBox(height: 10,),
                  Text(
                    "Welcome to Grep-IT! Software Solutions",
                    textAlign: TextAlign.center,
                    style:GoogleFonts.oswald(color:Colors.white,textStyle:Theme.of(context).textTheme.headline6),

                  ),
                  SizedBox(height: 20,),
                  Text(
                      "Freelancer's #1 Python3, Dart, JS, C# Experts",
                      textAlign: TextAlign.center,
                      style:GoogleFonts.poppins(color:Colors.white,fontWeight: FontWeight.w500)
                  ),
                  SizedBox(height: 20,),
                  Text(
                      "Complete Solutions, On Time Delivery, Transparent Pricing & Communication",
                      textAlign: TextAlign.center,
                      style:GoogleFonts.poppins(color:Colors.white,fontWeight: FontWeight.w400)),
                  SizedBox(height: 10,),
                ],),
            ),
            /*
            SizedBox(height: 30,),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TosPage(title:"Terms of Service")),
                );
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text(
                        "TOS/PP",
                        style: TextStyle(color: Colors.white,fontSize: 20)
                    ),
                    Icon(Icons.arrow_forward_ios)])
              ,
            ),*/
            SizedBox(height: 0,),
            MaterialButton(
              onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage(title:"Register")),
                );
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[

                    Text(
                      "Register",
                      style: TextStyle(color: Colors.white,fontSize: 20),

                    ),
                    Icon(Icons.arrow_forward_ios),
                  ]),

            ),
            SizedBox(height: 0,),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage(title:"Login Page")),
                );
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text(
                        "Login",
                        style: TextStyle(color: Colors.white,fontSize: 20)
                    ),
                    Icon(Icons.login)]),
            ),
            SizedBox(height: 0,),
            MaterialButton(
              onPressed: _launchHomeURL,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text(
                        "Website",
                        style: TextStyle(color: Colors.white,fontSize: 20)
                    ),
                    Icon(CupertinoIcons.link_circle_fill)
                  ]),
            ),
            SizedBox(height: 10,),

          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

_launchHomeURL() async {
  const url = 'https://grepit.dev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
