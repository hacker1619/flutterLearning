import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AnimatedCon extends StatelessWidget {
  // const AnimatedCon({super.key});
  bool changedbutton=false;
  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(
      duration: Duration(seconds: 1),
      alignment: Alignment.center,
      width: 50,
      height: 30,
      // color: Colors.deepPurple,
      child: changedbutton
          ? Icon(
        Icons.done,
        color: Colors.white,
      )
          : Text(
        "Login ",
        style: TextStyle(
          color: Colors.white,
          // fontWeight: FontWeight.bold,
          fontSize: 20.1,
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        // shape: changedbutton? BoxShape.rectangle : BoxShape.circle,

        borderRadius: changedbutton
            ? BorderRadius.circular(20)
            : BorderRadius.circular(50),
      ),
    );
  }
}
