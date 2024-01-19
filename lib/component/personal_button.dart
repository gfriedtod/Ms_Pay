import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/utils/app_colors.dart';

class PersonalButton extends StatelessWidget {
  VoidCallback onPressed;

  String text;

  bool state;



   PersonalButton({super.key, required this.onPressed , required this.text , required this.state});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      color: (state)?AppColors.primary: Colors.white,
      onPressed: onPressed ,child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(text , style: GoogleFonts.itim(
        fontSize: 24,
        color: (state) ? Colors.white : AppColors.primary,
        fontWeight: FontWeight.w400
    ),),
      ), );
  }
}
