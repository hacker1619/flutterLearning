import 'package:app1/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
// import 'dart:js_util';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
       darkTheme: ThemeData(
         brightness: Brightness.light,
       ),
       initialRoute: "/home",
       routes: {

        "/" : (context) => LoginPage(),
       "/home" : (context)=> HomePage(),
       }
    );
  }
}
