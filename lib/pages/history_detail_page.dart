import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/component/basic_input.dart';

class HistoryDetailPage extends StatelessWidget {
  const HistoryDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(Icons.arrow_back, size: 28,),
                    Text("Paiement sevice courant", style: GoogleFonts.itim(fontSize: 28),)
                  ],
                )),
            Positioned(
                child: SizedBox(
                  width: width,
                  height: height/1.3,
                  child:  Container(
                    padding: EdgeInsets.only(left: width/10, right: width/10, top: height/10),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BasicInput(label: "Jour :", hintText: "4 Janvier 2024 à 16h55"),
                        BasicInput(label: "Destinataire :", hintText: "Lycée Bilingue de bonaberi"),
                        BasicInput(label: "Détails :", hintText: "Scolarité pour l'élève TCHOUGA Jordan Tle c1"),
                        BasicInput(label: "Montant :", hintText: "35 000 FCFA", textInputType: TextInputType.number,),
                      ],
                    ),
                  ),
                )
            )
          ],
        ),
      ),

    );
  }
}
