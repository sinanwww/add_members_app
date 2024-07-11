import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String? hintText;
  const TextBox({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        decoration: InputDecoration(hintText: hintText),
      ),
    );
  }
}
