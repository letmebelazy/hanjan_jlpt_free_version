import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hanjan_jlpt_free_version/globals.dart';
import 'package:hanjan_jlpt_free_version/widget/level_list_tile.dart';

class LevelSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: baseColor,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset("assets/images/main_icon.png",
                        width: Get.width * 0.35),
                    Padding(padding: const EdgeInsets.only(top: 10.0)),
                    Image.asset("assets/images/main_title.png",
                        width: Get.width * 0.6),
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(vertical: 10.0)),
              for (int level in levelList) ...[
                LevelListTile(level)
              ],
              DummyListTile(),
              DummyListTile()
            ],
          ),
        ),
      ),
    );
  }
}
