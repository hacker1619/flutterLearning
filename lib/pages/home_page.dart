import 'package:app1/utility/routes.dart';
import 'package:app1/widget/Drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        // use Scaffold also in order to provide material app widgets
        appBar: AppBar(
          title: Text(
              "Catalog",
               style: TextStyle(
              fontSize: 20,
                 fontWeight: FontWeight.bold,
          ),
          ),
          centerTitle: true,
          toolbarOpacity: 1,
          toolbarHeight: 50,
          // shape: Shape
          backgroundColor: Colors.deepPurpleAccent,
        ),
         drawer: MyDrawer(),
        body: Center(child: Text("home page",style: TextStyle(fontSize: 30),)),
      );
  }
}
