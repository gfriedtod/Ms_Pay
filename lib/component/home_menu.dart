import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/utils/app_colors.dart';

class HomeMenu extends StatelessWidget {
  String value;

  VoidCallback onPressed;

  HomeMenu({super.key, required this.value , required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        elevation: 0,
        color: AppColors.primary,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Expanded(
                child: Text(
                  value,
                  style: GoogleFonts.itim(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondary),
                ),
              ),
              Icon(Icons.arrow_forward_outlined , color: AppColors.secondary,),
            ],
          ),
        ),
      ),
    );
  }
}
