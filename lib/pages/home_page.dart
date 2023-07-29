import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        // use Scaffold also in order to provide material app widgets
        appBar: AppBar(
          title: Text("AppBar"),
          centerTitle: true,
          toolbarOpacity: 1,
          toolbarHeight: 40,
          // shape: Shape
          backgroundColor: Colors.deepPurpleAccent,
        ),
        drawer: Drawer(

        ),
        body: Center(child: Text("Something is to sghow")),
      );
  }
}
