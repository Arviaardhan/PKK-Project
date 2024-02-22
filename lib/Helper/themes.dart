import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0xFFFE9900);
const Color splashDesc = Color(0xFF786A73);
const Color secondaryColor = Colors.white;
const Color backgroundColor = Color(0xFFFFEDD7);
const Color searchTextColor = Color(0xFF868686);
const Color defaultColor = Color(0xFF1A1A1A);

figmaFontsize(int fontSize) {
  return fontSize * 0.95;
}

class AppThemesWeight {
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.bold;
}

TextStyle splashTitleText = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: primaryColor,
        fontWeight: AppThemesWeight.bold,
        fontSize: figmaFontsize(40)
    )
);

TextStyle splashDescText = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: splashDesc,
        fontWeight: AppThemesWeight.medium,
        fontSize: figmaFontsize(15)
    )
);

TextStyle btnLoginText = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: secondaryColor,
        fontWeight: AppThemesWeight.semiBold,
        fontSize: figmaFontsize(25)
    )
);

TextStyle btnRegisterText = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: primaryColor,
        fontWeight: AppThemesWeight.semiBold,
        fontSize: figmaFontsize(25)
    )
);

TextStyle helloUserText = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: defaultColor,
        fontWeight: AppThemesWeight.semiBold,
        fontSize: figmaFontsize(35)
    )
);

TextStyle welcomeText = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: searchTextColor,
        fontWeight: AppThemesWeight.bold,
        fontSize: figmaFontsize(20),
    )
);

TextStyle searchText = GoogleFonts.poppins(
    textStyle: TextStyle(
      color: splashDesc,
      fontWeight: AppThemesWeight.semiBold,
      fontSize: figmaFontsize(20),
    )
);

TextStyle titleText = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: defaultColor,
        fontWeight: AppThemesWeight.semiBold,
        fontSize: figmaFontsize(30)
    )
);

//Image collection

String profilePhoto = "assets/profile_photo.jpg";