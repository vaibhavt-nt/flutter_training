import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class GoogleFontPackage extends StatelessWidget {
  const GoogleFontPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(
        'This is Google Fonts',
        style: GoogleFonts.lato(),

      ),),
      body: Column(
        children: [
          Text("This is example of google font",
          style: GoogleFonts.abel(),),

          Text(
            'This is Google Fonts',
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 48,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            'This is Google Fonts',
            style: GoogleFonts.b612(
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 48,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
