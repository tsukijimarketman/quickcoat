import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickcoat/core/colors/app_colors.dart';
import 'package:quickcoat/features/hover_extensions.dart';
import 'package:quickcoat/features/landing/contact/sections/first_section.dart';
import 'package:quickcoat/features/landing/contact/sections/second_section.dart';
import 'package:quickcoat/features/landing/contact/sections/third_section.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.width / 20,
        title: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 40,
            vertical: MediaQuery.of(context).size.width / 80,
          ),
          child: Row(
            children: [
              Image.asset(
                "assets/images/qclogo.png",
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.width / 30,
                width: MediaQuery.of(context).size.width / 30,
              ).showCursorOnHover,
              SizedBox(width: MediaQuery.of(context).size.width / 90),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 40,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: "Quick",
                      style: TextStyle(
                        color: AppColors.color11,
                        fontSize: MediaQuery.of(context).size.width / 50,
                        fontFamily:
                            GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                            ).fontFamily,
                      ),
                    ),
                    TextSpan(
                      text: "Coat",
                      style: TextStyle(
                        color: Color(0xFFfff200),
                        fontSize: MediaQuery.of(context).size.width / 50,
                        fontFamily:
                            GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                            ).fontFamily,
                      ),
                    ),
                  ],
                ),
              ).showCursorOnHover,
              Spacer(),
              Row(
                children: [
                  //Home
                  GestureDetector(
                    onTap: () {
                      // Navigate to home page
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/',
                        (route) => false,
                      );
                    },
                    child:
                        Container(
                          width: MediaQuery.of(context).size.width / 15.5,
                          height: MediaQuery.of(context).size.width / 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width / 120,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Home",
                              style: TextStyle(
                                color: AppColors.color11,
                                fontSize:
                                    MediaQuery.of(context).size.width / 90,
                                fontFamily:
                                    GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                    ).fontFamily,
                              ),
                            ),
                          ),
                        ).showCursorOnHover.moveUpOnHover,
                  ),
                  //Products
                  Container(
                    width: MediaQuery.of(context).size.width / 15.5,
                    height: MediaQuery.of(context).size.width / 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width / 120,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Products",
                        style: TextStyle(
                          color: AppColors.color11,
                          fontSize: MediaQuery.of(context).size.width / 90,
                          fontFamily:
                              GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                        ),
                      ),
                    ),
                  ).showCursorOnHover.moveUpOnHover,
                  //About
                  Container(
                    width: MediaQuery.of(context).size.width / 15.5,
                    height: MediaQuery.of(context).size.width / 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width / 120,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "About",
                        style: TextStyle(
                          color: AppColors.color11,
                          fontSize: MediaQuery.of(context).size.width / 90,
                          fontFamily:
                              GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                        ),
                      ),
                    ),
                  ).showCursorOnHover.moveUpOnHover,
                  //Contact Us
                  Container(
                    width: MediaQuery.of(context).size.width / 15.5,
                    height: MediaQuery.of(context).size.width / 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width / 120,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Contact",
                        style: TextStyle(
                          color: AppColors.color11,
                          fontSize: MediaQuery.of(context).size.width / 90,
                          fontFamily:
                              GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                        ),
                      ),
                    ),
                  ).showCursorOnHover.moveUpOnHover,
                  SizedBox(width: MediaQuery.of(context).size.width / 80),
                  //Searchbar
                  Container(
                    width: MediaQuery.of(context).size.width / 6,
                    height: MediaQuery.of(context).size.width / 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width / 120,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          offset: Offset(0, 2),
                        ),
                      ],
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 90,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: MediaQuery.of(context).size.width / 70,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 120,
                        ),
                        Expanded(
                          child: Text(
                            "Search products...",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: MediaQuery.of(context).size.width / 90,
                              fontFamily: GoogleFonts.inter().fontFamily,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ).showCursorOnHover,
                  SizedBox(width: MediaQuery.of(context).size.width / 80),
                  //Cart
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: AppColors.color11,
                    size: MediaQuery.of(context).size.width / 50,
                  ).showCursorOnHover.moveUpOnHover,
                  SizedBox(width: MediaQuery.of(context).size.width / 80),
                  //Sign In
                  Container(
                    width: MediaQuery.of(context).size.width / 15.5,
                    height: MediaQuery.of(context).size.width / 35,
                    decoration: BoxDecoration(
                      color: AppColors.color10,
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width / 120,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: AppColors.color1,
                          fontSize: MediaQuery.of(context).size.width / 90,
                          fontFamily:
                              GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                        ),
                      ),
                    ),
                  ).showCursorOnHover.moveUpOnHover,
                  SizedBox(width: MediaQuery.of(context).size.width / 80),
                  //Sign Up
                  Container(
                    width: MediaQuery.of(context).size.width / 15.5,
                    height: MediaQuery.of(context).size.width / 35,
                    decoration: BoxDecoration(
                      color: Color(0xFFfff200),
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width / 120,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: AppColors.color11,
                          fontSize: MediaQuery.of(context).size.width / 90,
                          fontFamily:
                              GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                        ),
                      ),
                    ),
                  ).showCursorOnHover.moveUpOnHover,
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FirstSection(),
            SecondSection(),
            ThirdSection(),
          ], // Assuming FourthSection is defined elsewhere,
        ),
      ),
    );
  }
}
