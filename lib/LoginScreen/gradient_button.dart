import 'package:flutter/material.dart';
import 'package:login_page/pallete/pallete.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20,right: 20),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: const LinearGradient(
          colors: <Color>[
            Pallete.gradient1,
            Pallete.gradient2,
            Pallete.gradient3,
            Pallete.gradient4,
            Pallete.gradient5,
            Pallete.gradient6,


          ],
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: ElevatedButton(onPressed: () {},

        child: const Text("Sign in",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w800),),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
      ),
    );
  }
}
