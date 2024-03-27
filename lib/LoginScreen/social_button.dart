import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_page/pallete/pallete.dart';
 class SocialButton extends StatelessWidget {
   final String label;
   final IconData icon1;
   final double horizontalPadding;
   const SocialButton({super.key, this.icon1=FontAwesomeIcons.google,required this.label,this.horizontalPadding=50,});

   @override
   Widget build(BuildContext context) {
     return TextButton.icon(
         onPressed: (){},
         icon:FaIcon(
           icon1,
           color: Pallete.whiteColor,
         ),
         label: Text(label,style: const TextStyle(fontSize: 24,color: Pallete.whiteColor,),),
     style: TextButton.styleFrom(
       padding: EdgeInsets.symmetric(vertical: 30,horizontal: horizontalPadding),
       shape: RoundedRectangleBorder(
         side: const BorderSide(
           color: Pallete.borderColor,
           width: 3,
         ),
         borderRadius: BorderRadius.circular(10),

       ),

     ));
   }
 }
 