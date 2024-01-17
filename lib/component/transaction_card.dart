import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionCard extends StatelessWidget {
  String value;

  String date;

  TransactionCard({super.key , required this.value , required this.date});

  @override
  Widget build(BuildContext context) {

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          width: 1,
        )
      ),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Image.asset('assets/images/money.png'),
            Text(value ,style: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w500),),
            Text(date , style: GoogleFonts.roboto(fontSize: 10, fontWeight: FontWeight.w500),)



          ],
        ),
      ),
    );
  }
}
