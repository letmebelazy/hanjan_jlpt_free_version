import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hanjan_jlpt_free_version/globals.dart';

class PartPageAppBar extends StatelessWidget {
  final int _level;
  PartPageAppBar(this._level);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: baseRed,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () => Get.back(),
      ),
      title: Column(
        children: [
          Text(
            'N$_level',
            textScaleFactor: 1.8,
            style: appBarTextStyle.copyWith(
              fontWeight: FontWeight.w800
            ),
          ),
          Text(
            '100개씩 보기',
            textScaleFactor: 0.8,
            style: appBarTextStyle.copyWith(
              fontWeight: FontWeight.w400
            ),
          )
        ],
      ),
    );
  }
}

class ViewSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: baseRed,
              child: Text(
                '100',
                textScaleFactor: 1.1,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 12.0)),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: baseGrey,
              child: Text(
                '200',
                textScaleFactor: 1.1,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PartListTile extends StatelessWidget {
  final int _level;
  final int _index;
  PartListTile(this._level, this._index);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.play_circle_filled),
      title: Row(
        children: [
          RichText(
            text: TextSpan(
              text: 'N$_level',
              style: TextStyle(
                  fontFamily: 'S-CoreDream',
                  fontWeight: FontWeight.w500,
                  fontSize: 22.0
              ),
              children: [
                TextSpan(
                  text: 'Part${_index + 1}',
                  style: TextStyle(
                    fontFamily: 'S-CoreDream',
                    fontWeight: FontWeight.w800,
                    fontSize: 22.0
                  )
                )
              ]
            ),
          )
        ],
      ),
    );
  }
}
