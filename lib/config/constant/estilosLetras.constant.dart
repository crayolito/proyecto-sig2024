import 'package:app_sig_2014/config/constant/paletaColores.constant.dart';
import 'package:app_sig_2014/config/constant/shadow.constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class EstilosLetras {
  BuildContext context;

  EstilosLetras(this.context);

  Size get size => MediaQuery.of(context).size;

  TextStyle get titulo => GoogleFonts.ptSans(
      fontSize: size.width * 0.05,
      fontWeight: FontWeight.bold,
      color: kSecondaryColor,
      shadows: shadowKP);

  TextStyle get subtitulo => GoogleFonts.ptSans(
      fontSize: size.width * 0.075,
      fontWeight: FontWeight.bold,
      color: kSecondaryColor,
      shadows: shadowKPN2);
}
