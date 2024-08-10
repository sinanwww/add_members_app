import 'package:add_members_app/view%20model/add_member_vm.dart';
import 'package:add_members_app/view/adding_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final MemberViewModel memberViewModel = MemberViewModel();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add members App"),
      ),
      body:
          //  memberViewModel.memberList.length < 1
          //     ? Center(
          //         child: Text(
          //           "No Members",
          //           style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          //         ),
          //       )
          //     :

          ListView.builder(
        padding: EdgeInsets.all(15),
        itemCount: memberViewModel.memberList.length,
        itemBuilder: (context, index) {
          final member = memberViewModel.memberList[index];
          return Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      member.name!,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text(
                      "lorem ipsum",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Get.to(() => AddingPage(
                memberModel: memberViewModel,
              ));
        },
      ),
    );
  }
}
