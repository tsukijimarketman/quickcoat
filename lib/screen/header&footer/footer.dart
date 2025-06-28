import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickcoat/core/colors/app_colors.dart';
import 'package:quickcoat/features/hover_extensions.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
  final double headingSize = width / 65;
  final double fontSize = width / 90;
  final EdgeInsets sectionPadding = EdgeInsets.symmetric(vertical: width / 300);
    return Container(
      height: MediaQuery.of(context).size.height / 2.4,
      width: MediaQuery.of(context).size.width,
      color: const Color.fromARGB(255, 11, 11, 34),
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.width / 40,
          horizontal: MediaQuery.of(context).size.width / 40,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // First Column
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Quick Coat",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width / 60,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width / 120),
                      Text(
                        "Quality Coat for Everyone",
                        style: GoogleFonts.inter(
                          fontSize: MediaQuery.of(context).size.width / 90,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width / 80),
                      Row(
                        children: [
                          Icon(Icons.facebook, color: Colors.white, size: MediaQuery.of(context).size.width / 70),
                          SizedBox(width: MediaQuery.of(context).size.width / 90),
                          Icon(Icons.camera_alt, color: Colors.white, size: MediaQuery.of(context).size.width / 70), // Instagram substitute
                          SizedBox(width: MediaQuery.of(context).size.width / 90),
                          Icon(Icons.music_note, color: Colors.white, size: MediaQuery.of(context).size.width / 70), // TikTok substitute
                          SizedBox(width: MediaQuery.of(context).size.width / 90),
                          Icon(Icons.alternate_email, color: Colors.white, size: MediaQuery.of(context).size.width / 70), // Twitter substitute
                        ],
                      ),
                    ],
                  ),
                ),
                // Second Column
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shop",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width / 65,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width / 120),
                      ...[
                        {
                          'label': 'All Products',
                          'onTap': (){

                          },
                          'hover': true
                        },
                        {
                          'label': 'Designs',
                          'onTap': (){

                          },
                          'hover': true
                        },
                        {
                          'label': 'Size',
                          'onTap': () { 
                            
                            },
                          'hover': true
                        },
                        {
                          'label': 'Colors',
                          'onTap': (){

                          },
                          'hover': true
                        },
                        ].map((item) {
        final String label = item['label'] as String;
        final VoidCallback onTap = item['onTap'] as VoidCallback;
        final bool hover = item['hover'] as bool;

        Widget text = GestureDetector(
          onTap: onTap,
          child: Text(
            label,
            style: GoogleFonts.inter(
              fontSize: fontSize,
              color: Colors.white70,
            ),
          ),
        );

        return Padding(
          padding: sectionPadding,
          child: hover ? text.showCursorOnHover.moveUpOnHover : text,
        );
      }),
    ],
  ),
),
                // Third Column
                Expanded(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Company",
        style: GoogleFonts.inter(
          fontWeight: FontWeight.bold,
          fontSize: headingSize,
          color: Colors.white,
        ),
      ),
      SizedBox(height: width / 120),
      ...[
        {
          'label': "About Us",
          'onTap': () {

          },
          'hover': true,
        },
        {
          'label': "Contact Us",
          'onTap': () {

          },
          'hover': true,
        },
        {
          'label': "Terms & Conditions",
          'onTap': () {
            Get.toNamed('/terms&condition');
            },
          'hover': true,
        },
        {
          'label': "Privacy Policy",
          'onTap': () {

          },
          'hover': true,
        },
      ].map((item) {
        final String label = item['label'] as String;
        final VoidCallback onTap = item['onTap'] as VoidCallback;
        final bool hover = item['hover'] as bool;

        Widget text = GestureDetector(
          onTap: onTap,
          child: Text(
            label,
            style: GoogleFonts.inter(
              fontSize: fontSize,
              color: Colors.white70,
            ),
          ),
        );

        return Padding(
          padding: sectionPadding,
          child: hover ? text.showCursorOnHover.moveUpOnHover : text,
        );
      }),
    ],
  ),
),
                // Fourth Column
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Address",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width / 65,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width / 120),
                      Text(
                        "123  Yagit Street",
                        style: GoogleFonts.inter(
                          fontSize: MediaQuery.of(context).size.width / 90,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width / 300),
                      Text(
                        "Metro Manila, Philippines",
                        style: GoogleFonts.inter(
                          fontSize: MediaQuery.of(context).size.width / 90,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width / 120),
                      Text(
                        "Email: quickcoat@psu.edu.ph",
                        style: GoogleFonts.inter(
                          fontSize: MediaQuery.of(context).size.width / 90,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width / 300),
                      Text(
                        "Phone: +63 991 938 2645",
                        style: GoogleFonts.inter(
                          fontSize: MediaQuery.of(context).size.width / 90,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.width / 60),
                child: Text(
                  "@ 2025 QuickCoat All Rights Reserved",
                  style: GoogleFonts.inter(
                    color: AppColors.color5,
                    fontSize: MediaQuery.of(context).size.width / 85,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
