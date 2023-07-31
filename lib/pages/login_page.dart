import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [Image.asset("assets/imagies/loginimage.png",fit:
        BoxFit.cover,),
        // SizedBox(
        //   height: 0,
        // ),
          Text(
            "welcome",
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 30),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "userName",
                  labelText: "enter userName",
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "enter password",
                ),
              ),
              ElevatedButton(
                  onPressed: (){

                  print("on pressed");
                    // Text("button pressed");
                  },

                  child: Text("Login"),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.deepPurple),
                    backgroundColor: MaterialStateProperty.all(Colors.white)
                  )
                  ),




            ],

          ),

        ),

        ],
        
      ),
    );
  }
}
