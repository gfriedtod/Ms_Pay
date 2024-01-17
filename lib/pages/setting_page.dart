import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/utils/app_colors.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 38,
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 60,),
                // backgroundImage: AssetImage("assets/images/avatar.png"),
              )
            ),
            SizedBox(
              height: height/3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person_outline_sharp, size: 30,),
                        hintText: "Jordan",
                        hintStyle: GoogleFonts.itim(color: Colors.black, fontSize: 20)
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone_outlined, size: 30,),
                        hintText: "693667901",
                        hintStyle: GoogleFonts.itim(color: Colors.black, fontSize: 20)
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email_outlined, size: 30,),
                        hintText: "foyangjunior02@gmail.com",
                        hintStyle: GoogleFonts.itim(color: Colors.black, fontSize: 20)
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Text("Se déconnecter", style: GoogleFonts.itim(color: AppColors.primary),),
                ),
                const Spacer()
              ],
            )
          ],
        ),
      ),
    );
  }
}
