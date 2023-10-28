import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 25.0;

Color buttonTextColor = const Color(0xffFFFFFF);
Color backgroundColor2 = const Color(0xff4245d1);
Color backgroundColor1 = const Color(0xffFFFFFF);
Color primaryTextColor = const Color(0xff000000);
Color secondaryTextColor = const Color(0xff4245d1);
Color inlineColor = const Color(0xff888888);
Color titleColor = const Color(0xff000000);
Color alertColor = const Color(0xffff5c5c);

TextStyle primaryTextStyle = GoogleFonts.rubik(
  color: primaryTextColor,
);

TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: secondaryTextColor,
);

TextStyle inlineTextStyle = GoogleFonts.poppins(
  color: inlineColor,
);

TextStyle buttonTextStyle = GoogleFonts.poppins(
  color: buttonTextColor,
);

TextStyle titleTextStyle = GoogleFonts.poppins(
  color: titleColor,
);

TextStyle backgroundSecondary = GoogleFonts.poppins(
  color: backgroundColor2,
);

TextStyle backgroundPrimary = GoogleFonts.poppins(
  color: backgroundColor1,
);

TextStyle alertTextStyle = GoogleFonts.poppins(
  color: alertColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight extraLight = FontWeight.w900;
