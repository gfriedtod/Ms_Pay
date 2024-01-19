import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/component/basic_input.dart';

import '../component/personal_button.dart';

class LocalMoneyTransfertPage extends StatelessWidget {
  const LocalMoneyTransfertPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
      title: Row(
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          Text('Transfert d’argent local',
              style: GoogleFonts.itim(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ))
        ],
      ),
    ),

      body: Center(
        child: SizedBox(
          width: size.width * 0.9,
          child: Column(
            children: [
              Row(
                children: [
                  Text('Opérateur',
                      style: GoogleFonts.itim(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [

                  Image.asset('assets/images/om.png'),
                  SizedBox(width: 10,),
                  Image.asset('assets/images/momo.png'),
                ]
              ),

              SizedBox(
                height: size.height*0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BasicInput(label: 'Entrez le numéro de compte qui envoie', hintText: '6 -- -- -- --' ,prefix: '+237',),
                    BasicInput(label: 'Entrez le numéro de compte qui recoit', hintText: '6 -- -- -- --' ,prefix: '+237',),
                    BasicInput(label: 'Entrez le montant', hintText: '2500 FCFA',)


                  ],
                ),
              ),
              
              LayoutBuilder(builder: (context, constraints) {
                return SizedBox(
                    width: constraints.maxWidth,
                    child: PersonalButton(
                      onPressed: () {},
                      text: 'Envoyer', state: true,
                    )
                );
              })
            ],
          ),
        ),
      ),

    );
  }
}
