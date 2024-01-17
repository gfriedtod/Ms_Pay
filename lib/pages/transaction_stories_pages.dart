import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/component/transaction_card.dart';

class TransactionStoriesPages extends StatelessWidget {
  const TransactionStoriesPages({super.key});

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
    );
  }
}
