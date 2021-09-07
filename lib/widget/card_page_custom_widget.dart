import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hanjan_jlpt_free_version/controller/level_controller.dart';
import 'package:hanjan_jlpt_free_version/controller/part_controller.dart';
import 'package:hanjan_jlpt_free_version/globals.dart';

class CardPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(56.0);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: baseGrey,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
      title: GetBuilder<PartController>(
        init: PartController(),
        builder: (_) {
          return GetBuilder<LevelController>(
            init: LevelController(),
            builder: (_controller) {
              return Column(
                children: [
                  RichText(
                    textScaleFactor: 1.8,
                    text: TextSpan(
                        text: 'N${_controller.level} ',
                        style: appBarTextStyle.copyWith(fontWeight: FontWeight.w500),
                        children: [
                          TextSpan(
                              text: 'Part${_.part + 1}',
                              style: appBarTextStyle.copyWith(fontWeight: FontWeight.w800)
                          )
                        ]
                    ),
                  ),
                  Text(
                    _.view == PartView.By100 ? '1/100' : '1/200',
                    textScaleFactor: 0.9,
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
