import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/basic_input.dart';
import '../utils/app_colors.dart';

class ExtraPayementPage extends StatelessWidget {
  const ExtraPayementPage({super.key});

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
                    Text("Transfert d’argent local", style: GoogleFonts.itim(fontSize: 28),)
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
                        SizedBox(
                          width: width,
                          height: height/7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Opérateur", style: GoogleFonts.itim(fontSize: 18),),
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/orange.png"))
                                    ),
                                  ),
                                  const SizedBox(width: 30,),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(image: AssetImage("assets/images/momo.png"))
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height/2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              BasicInput(label: "Entrez le numéro de compte qui envoie", hintText: "+237 6 -- -- -- --", textInputType: TextInputType.number, textAlign: TextAlign.start,),
                              BasicInput(label: "Entrez le numéro de compte qui recoit", hintText: "+237 6 -- -- -- --", textInputType: TextInputType.number, textAlign: TextAlign.start,),
                              BasicInput(label: "Entrez le montant :", hintText: "2500", textInputType: TextInputType.number, suffix: "FCFA",),
                            ],
                          ),
                        ),

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
