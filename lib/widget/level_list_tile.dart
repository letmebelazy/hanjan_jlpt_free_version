import 'package:custom_rounded_rectangle_border/custom_rounded_rectangle_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hanjan_jlpt_free_version/controller/level_page_controller.dart';
import 'package:hanjan_jlpt_free_version/globals.dart';

class LevelListTile extends StatelessWidget {
  final Map<int, int> lengthMap = {5: 400, 4: 800, 3: 1200};
  final int level;
  final LevelPageController controller = Get.put(LevelPageController());

  LevelListTile(this.level);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LevelPageController>(
        builder: (_) {
          return InkWell(
            onTap: () {
              _.selectLevel(level);
            },
            child: _.selectedLevel == level
            ? Container(
                width: Get.width * 0.75,
                height: Get.height * 0.07,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(50.0),
                      bottomLeft: const Radius.circular(50.0),
                    ),
                    border: Border.all(color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 5.0,
                          blurRadius: 7.0,
                          offset: const Offset(0, 3)
                      )
                    ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0)),
                        Text(
                          'N$level',
                          textScaleFactor: 3.0,
                          style: TextStyle(
                              color: baseColor, fontWeight: FontWeight.w800),
                        ),
                        Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0)),
                        CircleAvatar(
                          backgroundColor: baseColor,
                          radius: Get.width * 0.01,
                        ),
                        Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0)),
                        Text(
                          lengthMap[level].toString(),
                          textScaleFactor: 2.0,
                          style: TextStyle(
                              color: baseColor, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Icon(
                        Icons.play_circle_filled,
                        color: const Color.fromARGB(255, 214, 199, 184),
                        size: 40.0,),
                    ),
                  ],
                ))
            : Container(
                width: Get.width * 0.55,
                height: Get.height * 0.07,
                decoration: ShapeDecoration(
                    shape: CustomRoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Get.height * 0.035),
                        bottomLeft: Radius.circular(Get.height * 0.035),
                      ),
                      topSide: const BorderSide(color: Colors.white, width: 1.5),
                      bottomSide: const BorderSide(color: Colors.white, width: 1.5),
                      leftSide: const BorderSide(color: Colors.white, width: 1.5),
                      topLeftCornerSide: const BorderSide(color: Colors.white, width: 1.5),
                      bottomLeftCornerSide: const BorderSide(color: Colors.white, width: 1.5),
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0)),
                    Text(
                      'N$level',
                      textScaleFactor: 3.0,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w800),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0)),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: Get.width * 0.01,
                    ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0)),
                    Text(
                      lengthMap[level].toString(),
                      textScaleFactor: 2.0,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )
                  ],
                ))
          );
        });
  }
}


class DummyListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (_) {
                return AlertDialog(
                  title: const Text('유료 버전 준비 중입니다.', textAlign: TextAlign.center,),
                  content: TextButton(
                    child: const Text('OK',
                      style: const TextStyle(color: Colors.black45),),
                    onPressed: () => Get.back(),
                  ),
                );
              });
        },
        child: Container(
            alignment: Alignment.center,
            width: Get.width * 0.55,
            height: Get.height * 0.07,
            decoration: ShapeDecoration(
                shape: CustomRoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Get.height * 0.035),
                    bottomLeft: Radius.circular(Get.height * 0.035),
                  ),
                  topSide: const BorderSide(color: Colors.white, width: 1.5),
                  bottomSide: const BorderSide(color: Colors.white, width: 1.5),
                  leftSide: const BorderSide(color: Colors.white, width: 1.5),
                  topLeftCornerSide: const BorderSide(color: Colors.white, width: 1.5),
                  bottomLeftCornerSide: const BorderSide(color: Colors.white, width: 1.5),

                )
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Locked',
                textScaleFactor: 2.0,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800
                ),
              ),
            )
        ));
  }
}
