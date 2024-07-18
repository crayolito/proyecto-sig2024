import 'package:app_sig_2014/config/constant/paletaColores.constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowLoadingCustom {
  static void showLoadingMap(BuildContext context) {
    final size = MediaQuery.of(context).size;
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: kPrimaryColor, width: 2)),
            title: Column(
              children: [
                Text(
                  "Espere por favor",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ptSans(),
                ),
                Container(
                    width: size.width * 0.6,
                    height: size.height * 0.3,
                    decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ))
              ],
            ),
            content: SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.1,
              child: const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                  valueColor: AlwaysStoppedAnimation<Color>(kSecondaryColor),
                ),
              ),
            ),
          );
        });
  }
}
