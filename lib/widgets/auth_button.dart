import 'package:add_members_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final Function() onPressed;
  final String label;
  const AuthButton({super.key, required this.onPressed, required this.label});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        label,
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Pallete.buttonColor,
          fixedSize: Size(screenWidth, 50)),
    );
  }
}
