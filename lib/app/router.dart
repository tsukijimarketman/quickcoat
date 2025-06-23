import 'package:flutter/material.dart';
import 'package:quickcoat/features/landing/contact/contact_page.dart';
import '../features/landing/home/landing_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const LandingPage(),
  '/contact': (context) => const ContactPage(), 
};
