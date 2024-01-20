import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/component/home_menu.dart';
import 'package:untitled4/pages/extra_payement_page.dart';
import 'package:untitled4/pages/history_detail_page.dart';
import 'package:untitled4/pages/infra_payement_page.dart';
import 'package:untitled4/pages/local_money_transfert.dart';
import 'package:untitled4/pages/pay_scool_fees.dart';
import 'package:untitled4/pages/setting_page.dart';
import 'package:untitled4/pages/transaction_stories_pages.dart';
import 'package:untitled4/utils/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    switch(i) {
      case 0:
        break;
      case 1:
        Navigator.pushReplacement(context, PageRouteBuilder(pageBuilder: (_,__,___) => const TransactionStoriesPages()));
      case 2:
        Navigator.pushReplacement(context, PageRouteBuilder(pageBuilder: (_,__,___) => const SettingPage()));
      default:
        break;
    }
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
        ),
    bottomNavigationBar: SizedBox(
      height: 130,
      child: DotNavigationBar(
        backgroundColor: const Color.fromRGBO(1, 49, 62, 1),
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        items: [
          /// Home
          DotNavigationBarItem(
            icon: const Icon(Icons.home, color: Colors.white,),
            selectedColor: AppColors.primary,
          ),

          /// History
          DotNavigationBarItem(
            icon: const Icon(Icons.access_time_rounded, color: Colors.white),
            selectedColor: AppColors.primary,
          ),

          /// Settings
          DotNavigationBarItem(
            icon: const Icon(Icons.settings_outlined, color: Colors.white),
            selectedColor: AppColors.primary,
          ),

        ],),
    ),
    );
  }
}

enum _SelectedTab { home, history, settings }
