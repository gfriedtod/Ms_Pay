import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/component/home_menu.dart';

class HommePages extends StatelessWidget {
  const HommePages({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/sun.png'),
              Text(
                'Bonjour, Jordan',
                style:
                    GoogleFonts.itim(fontSize: 24, fontWeight: FontWeight.w400),
              ),
              Image.asset('assets/images/profile.png'),
            ],
          ),
        ),
        body: Center(
          child: SizedBox(
            width: size.width * 0.95,
            child: Column(

              children: [
                SizedBox(height: size.height*0.055,),
                HomeMenu(
                  value: 'Paiement Scolarité',
                  onPressed: () {},
                ),
                HomeMenu(value: 'Paiement Service courant', onPressed: () {}),
                HomeMenu(value: 'Paiement Service en ligne', onPressed: () {}),
                HomeMenu(
                  value: 'Transfert d’argent local',
                  onPressed: () {},
                ),
                HomeMenu(
                    value: 'Transfert d’argent international', onPressed: () {})
              ],
            ),
          ),
        ));
  }
}
