import 'package:add_members_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  const TextBox({
    super.key,
    this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(hintText: hintText),
      ),
    );
  }
}

class custumFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final bool isobscureText;
  const custumFormField(
      {super.key,
      required this.hintText,
      required this.labelText,
      this.isobscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // obscuringCharacter: "2",
      obscureText: isobscureText,
      decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          focusedBorder: _border(Pallete.appColor),
          border: _border(Colors.grey)),
    );
  }

  OutlineInputBorder _border(Color borderColor) => OutlineInputBorder(
      borderSide: BorderSide(color: borderColor),
      borderRadius: BorderRadius.circular(10));
}
