import 'package:add_members_app/model/member_model.dart';
import 'package:add_members_app/view%20model/add_member_vm.dart';
import 'package:add_members_app/view/home_page.dart';
import 'package:add_members_app/widgets/text_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddingPage extends StatelessWidget {
  final MemberViewModel memberModel;
  final nameCt = TextEditingController();
  AddingPage({super.key, required this.memberModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Member")),
      body: ListView(padding: const EdgeInsets.all(30), children: [
        TextBox(
          hintText: "Name",
          controller: nameCt,
        ),
        TextBox(hintText: "ph no"),
        SizedBox(
          height: 50,
        ),
        ElevatedButton(
          onPressed: () {
            memberModel.addMember(MemberModel(
                id: 1, name: " nameCt.text", phoneNumber: nameCt.text));
            // nameCt.clear();
            Get.to(() => HomePage());
          },
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
