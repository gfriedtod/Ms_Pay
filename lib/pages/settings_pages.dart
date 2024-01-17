import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/utils/app_colors.dart';

class SettingsPages extends StatelessWidget {
  const SettingsPages({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),

      body: Center(
        child: SizedBox(
          width: size.width*0.9,
          child: Column(
            children: [

              Image.asset('assets/images/profile.png' , width: 50 , height: 50,),
              SizedBox(height: 50,),
              Column(
                children: [
                  Row(

                    children: [
                      Image.asset('assets/images/persone.png'),
                      SizedBox(width: 10,),
                      Text('Jordan' , style: GoogleFonts.itim(
                        fontSize: 24,
                        fontWeight: FontWeight.w400
                      )),


                    ],
                  ),
                  Divider( height: 3,),
                  SizedBox(height: 20,),
                  Row(

                    children: [
                      Image.asset('assets/images/phone.png'),
                      SizedBox(width: 20,),
                      Text('656789090' , style: GoogleFonts.itim(
                          fontSize: 24,
                          fontWeight: FontWeight.w400
                      )),


                    ],
                  ),
                  Divider( height: 3,),
                  SizedBox(height: 20,),

                  Row(

                    children: [
                      Image.asset('assets/images/message.png'),
                      SizedBox(width: 10,),
                      Text('jordan.t@gmail.com' , style: GoogleFonts.itim(
                          fontSize: 24,
                          fontWeight: FontWeight.w400
                      )),


                    ],
                  ),
                  Divider( height: 3,)
                ],
              ),
              Row(
                children: [
                  TextButton(onPressed: (){}, child: Text('Se déconnecter', style: GoogleFonts.itim(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.primary
                  ),))
                ],
              )


            ],
          ),
        ),
      ),

    );
  }
}
