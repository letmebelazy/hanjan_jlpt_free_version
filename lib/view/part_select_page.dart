import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hanjan_jlpt_free_version/widget/part_page_custom_widget.dart';

class PartSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int _level = Get.arguments;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Get.height * 0.083),
        child: PartPageAppBar(_level),
      ),
      body: Column(
        children: [
          ViewSelector()
        ],
      ),
    );
  }
}
