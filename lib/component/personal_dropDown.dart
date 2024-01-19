import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalDropDownWidget extends StatelessWidget {
 final String label;

  const PersonalDropDownWidget({required this.label});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(label, style: GoogleFonts.itim(color: Colors.black, fontSize: 18),),

        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              width: 1,
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              elevation: 0,
              icon: Icon(Icons.keyboard_arrow_down),
              items: [
                DropdownMenuItem(
                  value: '1', child: Text('Orange Money'),
                ),
                DropdownMenuItem(child: Text('Mtn Mobile Money') , value: '2',),
              ], onChanged: (String? value) {  },
            ),
          )
        ),
      ],
    );
  }
}
