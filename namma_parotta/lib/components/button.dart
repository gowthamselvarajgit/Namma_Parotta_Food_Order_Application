import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 41, 49, 79),
          borderRadius: BorderRadius.circular(40),
        ),
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.almarai(
                color: Color.fromARGB(255, 218, 219, 189),
                fontSize: 18,
              ),
            ),

            const SizedBox(width: 10),

            //icons
            Icon(
              Icons.arrow_forward,
              color: Color.fromARGB(255, 218, 219, 189),
            ),
          ],
        ),
      ),
    );
  }
}
