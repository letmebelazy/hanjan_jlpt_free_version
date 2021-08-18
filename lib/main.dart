import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hanjan_jlpt_free_version/globals.dart';
import 'package:hanjan_jlpt_free_version/view/level_select_page.dart';

void main() {
  runApp(GetMaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '한잔 JLPT Free Version',
      theme: ThemeData(
        primaryColor: baseColor,
      ),
      home: LevelSelectPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
