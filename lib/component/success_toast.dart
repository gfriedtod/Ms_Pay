import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessToast extends StatelessWidget {
  final String message;
  const SuccessToast({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SnackBar(
          content: Container(
            width: width/1.2,
            height: 30,
            decoration: const BoxDecoration(
                color: Colors.white
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Image(image: AssetImage("assets/images/check.png")),
                Text(message, style: GoogleFonts.itim(fontSize: 17),)
              ],
            ),
          )
      );

  }
}
