import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalFormField extends StatelessWidget {
  final String value;

  String? icon;

  TextEditingController controller = TextEditingController();

   PersonalFormField({super.key, required this.value,  required this.controller , this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(

        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:(icon != null)? Image.asset(icon!):Container(),
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (context,constaints) {

                  return SizedBox(
                    child: TextFormField(
                      controller: controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: value,
                        hintStyle: GoogleFonts.itim(
                          fontSize: 24,
                          fontWeight: FontWeight.w400
                        ),

                      )
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
