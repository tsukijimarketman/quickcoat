import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickcoat/core/colors/app_colors.dart';

class FourthSection extends StatefulWidget {
  const FourthSection({super.key});

  @override
  State<FourthSection> createState() => _FourthSectionState();
}

class _FourthSectionState extends State<FourthSection> {
  @override
  Widget build(BuildContext context) {
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
                      ...["All products", "Designs", "Size", "Colors"].map(
                        (item) => Padding(
                          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width / 300),
                          child: Text(
                            item,
                            style: GoogleFonts.inter(
                              fontSize: MediaQuery.of(context).size.width / 90,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
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
                          fontSize: MediaQuery.of(context).size.width / 65,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width / 120),
                      ...[
                        "About Us",
                        "Contact Us",
                        "Terms & Conditions",
                        "Privacy Policy",
                      ].map(
                        (item) => Padding(
                          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width / 300),
                          child: Text(
                            item,
                            style: GoogleFonts.inter(
                              fontSize: MediaQuery.of(context).size.width / 90,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
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
