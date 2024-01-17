import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/component/personal_button.dart';
import 'package:untitled4/utils/app_colors.dart';

class WelComePage extends StatelessWidget {
  const WelComePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'MS PAY',
                  style: GoogleFonts.itim(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondary),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Bienvenu sur MSPay où vous pourrez effectuer vos paiements et transfert simplement',
                  style: GoogleFonts.itim(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondary),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),
                SizedBox(
                    width: width * 0.9,
                    child: PersonalButton(
                        onPressed: () {}, text: 'Get Started', state: false)),
                SizedBox(height: 20,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
