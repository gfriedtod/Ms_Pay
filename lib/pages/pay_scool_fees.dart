import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/component/basic_input.dart';
import 'package:untitled4/component/personal_button.dart';
import 'package:untitled4/component/personal_dropDown.dart';

class PaySchoolFeesPages extends StatelessWidget {
  const PaySchoolFeesPages({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
            Text(
              'Paiement scolarité',
              style: GoogleFonts.itim(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              )
            )
          ],
        ),

      ),
      body:SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: size.width *0.9,
            child: Column(
              children: [
                SizedBox(
                  height: size.height *0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      BasicInput(label: "Code de l’établissement", hintText: 'XHMLFF'),
                      BasicInput(label: "Matricule de l’élève", hintText: 'M-GHTL2024'),
                      BasicInput(label: "Montant", hintText: '35000 FCFA'),
                      PersonalDropDownWidget(label: 'Mode de paiement',),
                      BasicInput(label: 'Numéro de compte', hintText: '+237 690987878'),




                    ]
                  ),
                ),
                LayoutBuilder(
                  builder: (context ,constraints) {
                    return SizedBox(
                        width: constraints.maxWidth,
                        child: PersonalButton(onPressed: (){}, text: 'Envoyer', state: true));
                  }
                )
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}
