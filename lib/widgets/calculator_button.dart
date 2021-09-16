import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final double textSize;
  final Function callback;

  const CalculatorButton(
      {required this.text, required this.textSize, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 60,
        height: 70,
        child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black54),
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.green.shade200),
          ),
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: textSize,
              ),
            ),
          ),
          onPressed: () => callback(text),
        ),
      ),
    );
  }
}
