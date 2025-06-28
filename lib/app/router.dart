import 'package:get/get.dart';
import 'package:quickcoat/features/landing/contact/contact_page.dart';
import 'package:quickcoat/features/landing/home/landing_page.dart';
import 'package:quickcoat/screen/auth/forgotPassword.dart';
import 'package:quickcoat/screen/auth/signIn.dart';
import 'package:quickcoat/screen/auth/signUp.dart';
import 'package:quickcoat/screen/terms&condition/terms&condition.dart';

class AppRoutes {
  static const String landpage = '/';
  static const String signIn = '/signIn';
  static const String signUp = '/signUp';
  static const String contact = '/contact';
  static const String forgotpassword = '/forgotPassword';
  static const String termsandcondition = '/terms&condition';

  static final routes = [
    GetPage(name: '/', page: () => LandingPage()),
    GetPage(name: '/contact', page: () => ContactPage()),
    GetPage(name: '/signIn', page: () => SignIn()),
    GetPage(name: '/signUp', page: () => SignUp()),
    GetPage(name: '/forgotPassword', page: () => ForgotPassword()),
    GetPage(name: '/terms&condition', page: () => TermsandCondition()),
  ];
}