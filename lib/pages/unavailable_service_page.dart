import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UnavailableServicePage extends StatelessWidget {
  const UnavailableServicePage({super.key});

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
                  child:  Container(
                    padding: EdgeInsets.only(left: width/10, right: width/10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Image(image: AssetImage("assets/images/loop.png")),
                        SizedBox(height: height/10,),
                        Text("Service indisponible pour le moment", textAlign: TextAlign.center, style: GoogleFonts.itim(fontSize: 22),)
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
