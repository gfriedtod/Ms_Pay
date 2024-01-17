import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/personal_button.dart';
import '../component/personal_form_field.dart';
import '../utils/app_colors.dart';

///They Login pages.
class LoginPage extends StatelessWidget {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
   LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(

      body: DecoratedBox(
        position: DecorationPosition.background,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background1.png'),
                fit: BoxFit.cover
            )
        ),
        child: Center(
          child: SizedBox(
            width: size.width * 0.9,
            child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Column(
                    children: [
                      PersonalFormField(value: 'email', icon: 'assets/images/message.png', controller: email),
                      PersonalFormField(value: 'mot de passe', icon: 'assets/images/key.png', controller: password)
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Mot de passe oublié ?' ,  style: GoogleFonts.itim(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('J’ai déjà un compte.', style: GoogleFonts.itim(
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                          ),),
                          TextButton(
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(Colors.transparent),
                                padding: MaterialStateProperty.all(EdgeInsets.zero),

                              ),
                              onPressed: (){}, child: Text('M’inscrire' , style: GoogleFonts.itim(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: AppColors.green
                          ),))
                        ],
                      ),
                    ],
                  ),
                  LayoutBuilder(
                      builder: (context ,constraints) {
                        return SizedBox(
                            width: constraints.maxWidth,
                            child: PersonalButton(onPressed: (){}, text: 'Se connecter', state: true));
                      }
                  )



                ]
            ),
          ),
        ),
      ),
    );
  }
}
