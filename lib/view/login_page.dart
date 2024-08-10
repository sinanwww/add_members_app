import 'package:add_members_app/view/home_page.dart';
import 'package:add_members_app/widgets/auth_button.dart';
import 'package:add_members_app/widgets/text_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign In",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            custumFormField(
              hintText: "example.gmail.com",
              labelText: "email",
            ),
            const SizedBox(
              height: 30,
            ),
            custumFormField(
              isobscureText: true,
              hintText: "Passward",
              labelText: "Passward",
            ),
            const SizedBox(
              height: 30,
            ),
            AuthButton(
              onPressed: () {
                Get.to(() => HomePage());
              },
              label: "Sign In",
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
