import 'package:add_members_app/widgets/text_box.dart';
import 'package:flutter/material.dart';

class AddingPage extends StatelessWidget {
  const AddingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Member")),
      body: ListView(padding: EdgeInsets.all(30), children: [
        TextBox(hintText: "Name"),
        TextBox(hintText: "ph no"),
        SizedBox(
          height: 50,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Add",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        )
      ]),
    );
  }
}
