import 'package:flutter/material.dart';
import 'package:view_pager/base_widget/base_widget.dart';
import 'package:view_pager/screens/page_one.dart';
import 'package:view_pager/screens/page_three.dart';
import 'package:view_pager/screens/page_two.dart';

class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {

  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseAppBar('View Pager'),
      body: Container(
        child: PageView(
          controller: _controller,
          children: [
            MyPage1Widget(),
            MyPage2Widget(),
            MyPage3Widget(),
          ],
        ),
      ),
      
    );
  }
}