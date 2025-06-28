import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickcoat/animations/animatedTextField.dart';
import 'package:quickcoat/core/colors/app_colors.dart';
import 'package:quickcoat/features/hover_extensions.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isObscure = true;
  bool isConfirmObscure = true;
  Icon icon = Icon(Icons.visibility_off_outlined);
  Icon iconConfirm = Icon(Icons.visibility_off_outlined);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 30),

            Image.asset(
              "assets/images/qclogo.png",
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.width / 10,
              width: MediaQuery.of(context).size.width / 10,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 30),
            Text(
              'Create your account',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 90),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 90,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 100),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/signIn');
                  },
                  child:
                      Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 90,
                          color: AppColors.color9,
                          fontWeight: FontWeight.bold,
                        ),
                      ).showCursorOnHover.moveUpOnHover,
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.5,
              height: MediaQuery.of(context).size.height / 1.7,
              child: Card(
                color: Colors.white,
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Full Name',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 110,
                        ),
                      ),
                      AnimatedTextField(
                        label: null,
                        suffix: null,
                        readOnly: false,
                        prefix: Icon(Icons.person_outline),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 90),
                      Text(
                        'Email Address',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 110,
                        ),
                      ),
                      AnimatedTextField(
                        label: null,
                        suffix: null,
                        readOnly: false,
                        prefix: Icon(Icons.email_outlined),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 90),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start, // <-- Aligns children to the start (left)

                              children: [
                                Text(
                                  'Password',
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 110,
                                  ),
                                ),
                                AnimatedTextField(
                                  label: null,
                                  prefix: Icon(Icons.lock_outline),
                                  suffix:
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isObscure = !isObscure;
                                            icon =
                                                isObscure
                                                    ? Icon(
                                                      Icons
                                                          .visibility_off_outlined,
                                                    )
                                                    : Icon(
                                                      Icons.visibility_outlined,
                                                    );
                                          });
                                        },
                                        child: icon,
                                      ).showCursorOnHover.moveUpOnHover,
                                  readOnly: false,
                                  obscureText: isObscure,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start, // <-- Make sure this is added

                              children: [
                                Text(
                                  'Confirm Password',
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 110,
                                  ),
                                ),
                                AnimatedTextField(
                                  label: null,
                                  prefix: Icon(Icons.lock_outline),

                                  suffix:
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isConfirmObscure =
                                                !isConfirmObscure;
                                            iconConfirm =
                                                isConfirmObscure
                                                    ? Icon(
                                                      Icons
                                                          .visibility_off_outlined,
                                                    )
                                                    : Icon(
                                                      Icons.visibility_outlined,
                                                    );
                                          });
                                        },
                                        child: iconConfirm,
                                      ).showCursorOnHover.moveUpOnHover,
                                  readOnly: false,
                                  obscureText: isConfirmObscure,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 110,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Checkbox(value: false, onChanged: null),
                              Text(
                                'I agree to the',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 110,
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed('/terms&condition');
                            },
                            child: Text(
                              'Terms and Conditions',
                              style: TextStyle(
                                color: AppColors.color9,
                                fontSize:
                                    MediaQuery.of(context).size.width / 110,
                              ),
                            ),
                          ).moveUpOnHover.showCursorOnHover,
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 11022,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 17,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            backgroundColor: AppColors.color9,
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width / 10,
                              vertical: MediaQuery.of(context).size.height / 90,
                            ),
                          ),
                          onPressed: () {
                            // Handle sign in logic
                          },
                          child:
                              Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 90,
                                  color: AppColors.color1,
                                ),
                              ).showCursorOnHover.moveUpOnHover,
                        ),
                      ),
                       SizedBox(height: MediaQuery.of(context).size.height / 40),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/');
                        },
                        child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.keyboard_arrow_left,
                                  size: MediaQuery.of(context).size.width / 60,
                                  color: AppColors.color9,
                                ),
                                Text(
                                  'Back to Land Page',
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 90,
                                    color: AppColors.color9,
                                  ),
                                ),
                              ],
                            ).moveUpOnHover.showCursorOnHover,
                      ),
                    ],
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
