import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasicInput extends StatelessWidget {
  final String label;
  final String hintText;
  final TextInputType? textInputType;
  final TextAlign? textAlign;
  final String? suffix;
  final TextEditingController? controller = TextEditingController();
  final String? prefix;
  BasicInput({super.key, required this.label, required this.hintText, this.textInputType, this.textAlign, this.suffix, this.prefix, this.controller});




  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: GoogleFonts.itim(color: Colors.black, fontSize: 18),),
        TextFormField(
          textAlign: textAlign ?? TextAlign.right,
          controller: controller,
          keyboardType: textInputType ?? TextInputType.text,
          decoration: InputDecoration(
            prefix: prefix != null ? Text(prefix! , style: GoogleFonts.itim(color: Colors.black, fontSize: 18,) ): null,
              border: OutlineInputBorder(

                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(12),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.itim(color: Colors.black, fontSize: 18),
            suffixText: suffix,
            suffixStyle: GoogleFonts.itim(color: Colors.black, fontSize: 17)
          ),
        )
      ],
    );
  }
}
