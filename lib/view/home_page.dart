import 'package:add_members_app/view/adding_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add members App"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(15),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "titele",
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
          Get.to(() => AddingPage());
        },
      ),
    );
  }
}
