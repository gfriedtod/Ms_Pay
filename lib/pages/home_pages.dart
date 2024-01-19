import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/component/home_menu.dart';
import 'package:untitled4/pages/extra_payement_page.dart';
import 'package:untitled4/pages/infra_payement_page.dart';
import 'package:untitled4/pages/local_money_transfert.dart';
import 'package:untitled4/pages/pay_scool_fees.dart';

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
                  onPressed: () {
                    Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___) => const PaySchoolFeesPages()));
                  },
                ),
                HomeMenu(value: 'Paiement Service courant', onPressed: () {
                  Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___) => const InfraPayementPage()));
                }),
                HomeMenu(value: 'Paiement Service en ligne', onPressed: () {
                  Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___) => const ExtraPayementPage()));
                }),
                HomeMenu(
                  value: 'Transfert d’argent local',
                  onPressed: () {
                    Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___) => const LocalMoneyTransfertPage()));
                  },
                ),
                HomeMenu(
                    value: 'Transfert d’argent international', onPressed: () {
                  Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___) => const ExtraPayementPage()));
                })
              ],
            ),
          ),
        ));
  }
}
