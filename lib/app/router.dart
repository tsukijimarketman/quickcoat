import 'package:flutter/material.dart';
import '../features/landing/home/landing_page.dart';
//import '../features/auth/presentation/login_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const LandingPage(),
  //'/login': (context) => const LoginScreen(),
};
