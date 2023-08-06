import 'package:app1/pages/login_page.dart';
import 'package:app1/utility/routes.dart';
import 'package:app1/widget/myTheme.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:app1/widget/';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darKTheme(context,),
       theme: MyTheme.lightTheme(context),

       initialRoute: MyRoutes.homeRoute,
       routes: {

        // "/" : (context) => HomePage(),
       // "/home" : (context)=> HomePage(),

         MyRoutes.loginRoute: (context)=> LoginPage(),
         MyRoutes.homeRoute: (context)=> HomePage(),

       }
    );
  }
}
