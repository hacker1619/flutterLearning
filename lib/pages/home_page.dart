import 'package:app1/utility/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        // use Scaffold also in order to provide material app widgets
        appBar: AppBar(
          title: Text("Catalog"),
          centerTitle: true,
          toolbarOpacity: 1,
          toolbarHeight: 40,
          // shape: Shape
          backgroundColor: Colors.deepPurpleAccent,
        ),
        drawer: Drawer(

            child: Row(
              children: [
                Container(
                 // height: ,

                  child: Align(

                    alignment: Alignment.bottomLeft,
                    child: ElevatedButton(
                onPressed: (){
        Navigator.pushNamed(context, MyRoutes.loginRoute);
        },

          child: Text(
            "Back",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
                  ),
                  // padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 100)

                ),
              ],
            ),
        ),
        body: Center(child: Text("Something is to show")),
      );
  }
}
