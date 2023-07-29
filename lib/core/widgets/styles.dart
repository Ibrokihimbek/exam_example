import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  AppStyle._();

  static TextStyle fontLeagueSpartanW800({required Color appcolor}) {
    return GoogleFonts.leagueSpartan(
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w800,
        color: appcolor,
      ),
    );
  }

  static TextStyle fontLeagueSpartan700({required Color appcolor}) {
    return GoogleFonts.leagueSpartan(
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: appcolor,
      ),
    );
  }

  static TextStyle fontLeagueSpartanW600({required Color appcolor}) {
    return GoogleFonts.leagueSpartan(
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: appcolor,
      ),
    );
  }

  static TextStyle fontLeagueSpartanW500({required Color appcolor}) {
    return GoogleFonts.leagueSpartan(
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: appcolor,
      ),
    );
  }

  static TextStyle fontLeagueSpartanW400({required Color appcolor}) {
    return GoogleFonts.leagueSpartan(
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: appcolor,
      ),
    );
  }

  static TextStyle fontLeagueSpartanW300({required Color appcolor}) {
    return GoogleFonts.leagueSpartan(
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w300,
        color: appcolor,
      ),
    );
  }
}
