import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_page/LoginScreen/gradient_button.dart';
import 'package:login_page/LoginScreen/login_field.dart';
import 'package:login_page/LoginScreen/social_button.dart';
import 'package:login_page/pallete/pallete.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: -50,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: <Color>[
                            Pallete.gradient1,
                            Pallete.gradient2,
                            Pallete.gradient3,
                            Pallete.gradient4,
                            Pallete.gradient5,
                            Pallete.gradient6,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 280,
                    top: 50,
                    child: Container(
                      width: 75,
                      height: 75,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Pallete.backgroundColor,
                        gradient: LinearGradient(
                          colors: <Color>[
                            Pallete.gradient1,
                            Pallete.gradient2,
                            Pallete.gradient3,
                            Pallete.gradient4,
                            Pallete.gradient5,
                            Pallete.gradient6,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),

                  // const Text("Sign In"),
                ],
              ),
            ),
            const Expanded(
              flex: 4,
              child:SizedBox(
                width: double.infinity,
                child:Column(
                  children: [
                    Text(
                      "Sign in.",
                      style: TextStyle(
                          color: Pallete.whiteColor,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                   SizedBox(height: 40,),
                    SocialButton(label: 'Continue With Google', ),
                    SizedBox(height: 20,),
                    SocialButton(icon1: FontAwesomeIcons.facebook,label:'Continue With Facebook',horizontalPadding: 38,),
                    SizedBox(height: 10,),
                    Text(
                      "or",
                      style: TextStyle(
                          color: Pallete.whiteColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 10,),
                    LoginField( hintText: 'Enter Email',),
                    SizedBox(height: 15,),
                    LoginField(hintText: 'Enter Password',),
                    SizedBox(height: 25,),
                    GradientButton(),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
