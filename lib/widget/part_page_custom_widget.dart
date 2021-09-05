import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hanjan_jlpt_free_version/controller/part_controller.dart';
import 'package:hanjan_jlpt_free_version/globals.dart';

class PartPageAppBar extends StatelessWidget {
  final int _level;
  PartPageAppBar(this._level);

  final PartController _controller = Get.put(PartController());

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
    return Container(
      margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),

      child: ListTile(
        leading: Icon(
            Icons.play_circle_filled,
            color: baseGrey),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                text: 'N$_level ',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'S-CoreDream',
                    fontWeight: FontWeight.w500,
                    fontSize: 22.0
                ),
                children: [
                  TextSpan(
                    text: 'Part${_index + 1}',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'S-CoreDream',
                      fontWeight: FontWeight.w800,
                      fontSize: 22.0
                    )
                  )
                ]
              ),
            ),
            Container(
              width: 90,
              child: Text(
                '${_index * 100 + 1}-${_index * 100 + 100}',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w100
                ),
              ),
            )
          ],
        ),
        trailing: DottedCounter(0),
        onTap: () {},
      ),
    );
  }
}

class DottedCounter extends StatelessWidget {
  final int _counter;
  DottedCounter(this._counter);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CircleAvatar(
            radius: 5,
            backgroundColor: _counter > 0
                ? const Color.fromRGBO(199, 70, 70, 100)
                : const Color.fromRGBO(180, 166, 152, 100),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2.5),),
          CircleAvatar(
            radius: 5,
            backgroundColor: _counter > 1
                ? const Color.fromRGBO(199, 70, 70, 80)
                : const Color.fromRGBO(180, 166, 152, 80),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2.5),),
          CircleAvatar(
            radius: 5,
            backgroundColor: _counter > 2
                ? const Color.fromRGBO(199, 70, 70, 60)
                : const Color.fromRGBO(180, 166, 152, 60),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2.5),),
          CircleAvatar(
            radius: 5,
            backgroundColor: _counter > 3
                ? const Color.fromRGBO(199, 70, 70, 40)
                : const Color.fromRGBO(180, 166, 152, 40),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2.5),),
          CircleAvatar(
            radius: 5,
            backgroundColor: _counter > 4
                ? const Color.fromRGBO(199, 70, 70, 20)
                : const Color.fromRGBO(180, 166, 152, 20),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2.5),),
        ],
      ),
    );
  }
}
