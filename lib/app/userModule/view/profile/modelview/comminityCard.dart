import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toplulugum/core/utils/colors.dart';

Widget gradientCardSample() {
  return Card(
    // Set the shape of the card using a rounded rectangle border with a 8 pixel radius
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    // Set the clip behavior of the card
    clipBehavior: Clip.antiAliasWithSaveLayer,
    // Define the child widgets of the card
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Display an image at the top of the card that fills the width of the card and has a height of 160 pixels
        Image.network(
          "https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg",
          height: 160,
          width: double.infinity,
          fit: BoxFit.cover,
        ),

        // Add a container with padding that contains the card's title, text, and buttons
        Container(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Display the card's title using a font size of 24 and a dark grey color
              Text("Bilisim TopluluGu",
                  style: GoogleFonts.orbitron(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: AppColors.shadowColorLight,
                      letterSpacing: 5,
                    ),
                  )),
              // Add a space between the title and the text
              Container(height: 10),
              // Display the card's text using a font size of 15 and a light grey color
              Text(" Üyesi",
                  style: GoogleFonts.orbitron(
                    textStyle: TextStyle(
                      fontSize: 15,
                      color: AppColors.black,
                      letterSpacing: 5,
                    ),
                  )),
            ],
          ),
        ),

        Container(height: 5),
      ],
    ),
  );
}
