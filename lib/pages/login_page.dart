// import 'dart:js_interop';

import 'package:app1/utility/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({super.key});



  final _formKey= GlobalKey<FormState>();




  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(

            children: [Image.asset("assets/imagies/loginimage.png",fit:
            BoxFit.cover,
              height: 100,
            ),
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
              padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    // _formKey,
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "userName",
                        labelText: "enter userName",

                      ),
                      validator: (value){
                        if(value?.isEmpty==true){
                          return "caNT be empty";

                        }
                        if(value!="nirmal_1619"){
                          return " wrong username";

                        }
                        return null;
                      },

                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "enter password",
                      ),
                      validator: (value){
                        if(value?.isEmpty==true){
                          return "caNT be empty";

                        }
                        if(value!="12345678"){
                          return " wrong password";

                        }
                        return null;
                      },

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 30.2,
                      width: 70,

                      child: ElevatedButton(
                         onPressed: (){
                           if(_formKey.currentState!.validate()){
                             print("home");
                             Navigator.pushNamed(context, MyRoutes.homeRoute);
                           }
                         },
                        child: Text("Login"),


                        style: ElevatedButton.styleFrom(

                          backgroundColor: Colors.deepPurple,

                          side: BorderSide(width: 1, color: Colors.black),

                        // padding: EdgeInsets.all(50),
                        ),
                        // style: ButtonStyle(
                        //
                        //   foregroundColor: MaterialStateProperty.all(Colors.deepPurple),
                        //   backgroundColor: MaterialStateProperty.all(Colors.white)
                        // ),

                      ),

                    ),


                  ],

                ),
              ),

            ),

            ],

          ),
        ),
      ),
    );
  }
}
