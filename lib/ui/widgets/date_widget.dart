import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateWidget extends StatelessWidget {
  bool isChossen;

  DateWidget(this.isChossen);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isChossen ? Colors.white : Color(0xFF254196),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(13),
        topRight: Radius.circular(13),
        bottomLeft: Radius.circular(13),
        bottomRight: Radius.circular(13),
      )),
      child: SizedBox(
        height: 80,
        width: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SAT",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  color: isChossen ? Color(0xFF2846a8) : Color(0xFF6a82ca),
                ))),
            Text("10",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                  color: isChossen ? Color(0xFF2846a8) : Color(0xFF6a82ca),
                ))),
          ],
        ),
      ),
    );
  }
}
