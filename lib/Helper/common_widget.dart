// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonWidget {
  Widget centuryText(
      {text,
      textMaxLine,
      textOverFlow,
      textColor,
      textSize,
      textWeight,
      textAlign}) {
    return Text(
      text,
      maxLines: textMaxLine,
      overflow: textOverFlow,
      textAlign: textAlign,
      style: GoogleFonts.zenMaruGothic(
        color: textColor,
        fontSize: textSize,
        fontWeight: textWeight,
      ),
    );
  }
}
