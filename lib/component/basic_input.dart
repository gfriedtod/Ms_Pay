import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasicInput extends StatelessWidget {
  final String label;
  final String hintText;
  final TextInputType? textInputType;
  const BasicInput({super.key, required this.label, required this.hintText, this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: GoogleFonts.itim(color: Colors.black, fontSize: 18),),
        TextFormField(
          keyboardType: textInputType ?? TextInputType.text,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(12),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.itim(color: Colors.black, fontSize: 18)
          ),
        )
      ],
    );
  }
}
