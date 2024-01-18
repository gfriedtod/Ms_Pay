import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/utils/app_colors.dart';

import '../component/basic_input.dart';

class InfraPayementPage extends StatelessWidget {
  const InfraPayementPage({super.key});

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
                    Text("Paiement scolarité", style: GoogleFonts.itim(fontSize: 28),)
                  ],
                )),
            Positioned(
                child: SingleChildScrollView(
                  child: Container(
                    width: width,
                    height: height/1.1,
                    padding: EdgeInsets.only(left: width/10, right: width/10, top: height/25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const BasicInput(label: "Code de l’établissement", hintText: "XHMLFF"),
                        const BasicInput(label: "Matricule de l’élève", hintText: "M-GHTL2024"),
                        const BasicInput(label: "Montant :", hintText: "35 000", textInputType: TextInputType.number, suffix: "FCFA",),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Mode de paiement", style: GoogleFonts.itim(color: Colors.black, fontSize: 18),),
                            Container(
                              width: width,
                              decoration: BoxDecoration(
                                  border:Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Spacer(),
                                  DropdownButton(
                                      value: "Orange money",
                                      icon: const Icon(Icons.keyboard_arrow_down, color: Colors.black,),
                                      items: [
                                        DropdownMenuItem<String>
                                          (
                                          value: "Orange money",
                                          child: Text("Orange money", style: GoogleFonts.itim(color: Colors.black, fontSize: 18),),
                                        ),
                                        DropdownMenuItem<String>
                                          (
                                            value: "Mobile money",
                                            child: Text("Mobile money", style: GoogleFonts.itim(color: Colors.black, fontSize: 18),)
                                        )
                                      ],
                                      onChanged: (value){})
                                ],
                              ),
                            ),
                          ],
                        ),
                        const BasicInput(label: "Numéro de compte", hintText: "+237 693667901", textInputType: TextInputType.number, textAlign: TextAlign.start,),
                        SizedBox(
                          width: width,
                          height: height/12,
                          child: ElevatedButton(
                            onPressed: (){},
                            style: ButtonStyle(
                                backgroundColor: const MaterialStatePropertyAll(AppColors.primary),
                                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7)
                                ))
                            ),
                            child: Text("Envoyer", style: GoogleFonts.itim(color: Colors.white, fontSize: 21),),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
          ],
        ),
      ),

    );
  }
}
