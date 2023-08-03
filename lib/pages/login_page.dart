import 'package:app1/pages/animatorcontainer.dart';
import 'package:app1/utility/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  // const LoginPage({super.key});

  // String name="";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var name = "";
  bool changedbutton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()) {
      setState(() {
        changedbutton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);


      setState(() {
        changedbutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/imagies/loginimage.png",
                  fit: BoxFit.cover,
                  height: 100,
                ),
                // SizedBox(
                //   height: 0,
                // ),
                Text(
                  "welcome $name",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "userName",
                          labelText: "enter userName",
                        ),
                        validator: (value){
                          if(value!="nirmal_1619") {
                            return "wrong username";
                          }
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          labelText: "enter password",
                        ),
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return " enter pass";
                          }
                          if(value.length<6) return "atleast 6 latters";
                          if(value!="12345678") return " wrong passward";




                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 30.2,
                        width: 70,
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedCon(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
