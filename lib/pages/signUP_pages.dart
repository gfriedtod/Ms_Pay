import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/component/personal_button.dart';
import 'package:untitled4/component/personal_form_field.dart';
import 'package:untitled4/utils/app_colors.dart';

class SignUpPage extends StatelessWidget {

  TextEditingController phone = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  SignUpPage({super.key});

  TextEditingController name  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      
      body: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
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
                    PersonalFormField(value: 'nom', icon: 'assets/images/persone.png', controller: name),
                    PersonalFormField(value: 'numero', icon: 'assets/images/phone.png', controller: phone),
                    PersonalFormField(value: 'email', icon: 'assets/images/message.png', controller: email),
                    PersonalFormField(value: 'mot de passe', icon: 'assets/images/key.png', controller: password)
                  ],
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
                        onPressed: (){}, child: Text(' M’e connecter' , style: GoogleFonts.itim(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.primary
                    ),))
                  ],
                ),
                LayoutBuilder(
                  builder: (context ,constraints) {
                    return SizedBox(
                        width: constraints.maxWidth,
                        child: PersonalButton(onPressed: (){}, text: 'S’inscrire', state: true));
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
