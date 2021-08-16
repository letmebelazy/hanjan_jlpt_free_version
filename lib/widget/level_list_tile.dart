import 'package:custom_rounded_rectangle_border/custom_rounded_rectangle_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LevelListTile extends StatelessWidget {
  final Map<int, int> lengthMap = {5: 400, 4: 800, 3: 1200};
  final int level;

  LevelListTile(this.level);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.all(10),
            width: Get.width * 0.55,
            height: 65,//Get.height * 0.07,
            decoration: ShapeDecoration(
              shape: CustomRoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Get.width * 0.075),
                  bottomLeft: Radius.circular(Get.width * 0.075),
                ),
                topSide: BorderSide(color: Colors.white),
                bottomSide: BorderSide(color: Colors.white),
                leftSide: BorderSide(color: Colors.white),
                topLeftCornerSide: BorderSide(color: Colors.white),
                bottomLeftCornerSide: BorderSide(color: Colors.white),

              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'N$level',
                  textScaleFactor: 3.0,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w800),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: Get.width * 0.01,
                ),
                Text(
                  lengthMap[level].toString(),
                  textScaleFactor: 2.0,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                )
              ],
            )));
  }
}
