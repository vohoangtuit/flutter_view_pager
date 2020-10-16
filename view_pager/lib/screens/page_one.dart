import 'package:flutter/material.dart';

import 'detail.dart';
import 'my_box.dart';

class MyPage1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.green,
          ),
          itemCount: 30,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Home $index", style: TextStyle(color: Colors.blue, fontSize: 17)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DetailScreen("Home $index")));
              },
            );
          },
        ),
      ),
    );
  }
}