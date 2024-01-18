import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/utils/app_colors.dart';

class ValidationPopup extends StatelessWidget {
  final GestureTapCallback? onTap;

  const ValidationPopup({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
        children: [
          AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            ),
            icon: Row(
              children: [
                const Spacer(),
                InkWell(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                        child: const Icon(Icons.close, color: Colors.black, size: 17,)),
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            content:
              Container(
                height: height/6,
                width: width/5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Un paiement sera effectué", style: GoogleFonts.itim(fontSize: 20), textAlign: TextAlign.center,),
                    SizedBox(
                      width: width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ButtonStyle(
                              backgroundColor: const MaterialStatePropertyAll(AppColors.primary),
                              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)
                              ))
                          ),
                          child: Text("Valider", style: GoogleFonts.itim(color: Colors.white, fontSize: 21),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ),
        ],
    );
  }
}
