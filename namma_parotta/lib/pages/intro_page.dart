import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:namma_parotta/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 29, 59),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 25),
              //shop name
              Text(
                'நம்ம பரோட்டா.Com',
                style: GoogleFonts.anekTamil(
                    fontSize: 26,
                    color: Color.fromARGB(255, 218, 219, 189),
                    fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 0),

              //icon
              Padding(
                padding: const EdgeInsets.all(50.00),
                child: Image.asset(
                  'lib/images/logo.png',
                ),
              ),

              //title
              Text(
                'The Flake & Roasted Delight',
                style: GoogleFonts.playfairDisplay(
                  fontSize: 42,
                  color: Color.fromARGB(255, 218, 219, 189),
                ),
              ),
              const SizedBox(height: 40),

              //subtitle
              Text(
                'Fell The Taste of namma parotta from anywhere.',
                style: GoogleFonts.playfairDisplay(
                  color: Color.fromARGB(255, 218, 219, 189),
                  fontSize: 20,
                  height: 2,
                ),
              ),

              const SizedBox(height: 50),

              //get started button
              MyButton(
                text: "Taste The Flake",
                onTap: () {
                  // Go to the menu page
                  Navigator.pushNamed(context, '/menupage');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
