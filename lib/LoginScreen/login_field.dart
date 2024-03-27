import 'package:flutter/material.dart';
import 'package:login_page/pallete/pallete.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  const LoginField({required this.hintText,super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
      maxWidth:400,),
      child:Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: TextFormField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 3,
                color: Pallete.gradient6,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(),
            hintText:hintText,
          ),

        ),
      ),

    );
  }
}
