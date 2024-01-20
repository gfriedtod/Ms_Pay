import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/component/transaction_card.dart';
import 'package:untitled4/pages/setting_page.dart';

import '../utils/app_colors.dart';
import 'home_pages.dart';

class TransactionStoriesPages extends StatefulWidget {
  const TransactionStoriesPages({super.key});

  @override
  TransactionStoriesPagesState createState() => TransactionStoriesPagesState();
}

class TransactionStoriesPagesState extends State<TransactionStoriesPages> with TickerProviderStateMixin {

  var _selectedTab = _SelectedTab.history;

  void _handleIndexChanged(int i) {
    switch (i) {
      case 0:
        Navigator.pushReplacement(context,
            PageRouteBuilder(pageBuilder: (_, __, ___) => const HomePage()));
      case 1:
        break;
      case 2:
        Navigator.pushReplacement(context, PageRouteBuilder(
            pageBuilder: (_, __, ___) => const SettingPage()));
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
        title: Text(
          'Historique de transactions',
          style: GoogleFonts.itim(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        )
      ),

      body: Column(
        children: [
          SizedBox(height: 20,),
          SizedBox(height: size.height * 0.7,
            child: ListView.builder(itemBuilder: (context, index) {

              return TransactionCard(value: 'Paiement de scolarité', date: '10/01/2023');
            }),
          ),
        ],
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

            /// Likes
            DotNavigationBarItem(
              icon: const Icon(Icons.access_time_rounded, color: Colors.white),
              selectedColor: AppColors.primary,
            ),

            /// Search
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

