import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hanjan_jlpt_free_version/globals.dart';
import 'package:hanjan_jlpt_free_version/view/level_select_page.dart';
import 'package:hanjan_jlpt_free_version/view/part_select_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '한잔 JLPT Free Version',
      theme: ThemeData(
        primaryColor: baseRed,
      ),
      home: LevelSelectPage(),
      getPages: [
        GetPage(name: '/', page: () => LevelSelectPage()),
        GetPage(name: '/part', page: () => PartSelectPage()),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
