import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hanjan_jlpt_free_version/controller/level_controller.dart';
import 'package:hanjan_jlpt_free_version/controller/part_controller.dart';
import 'package:hanjan_jlpt_free_version/globals.dart';

class PartPageAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: baseRed,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Get.back(),
      ),
      title: Column(
        children: [
          GetBuilder<LevelController>(
            init: LevelController(),
            builder: (_) {
              return Text(
                'N${_.level}',
                textScaleFactor: 1.8,
                style: appBarTextStyle.copyWith(fontWeight: FontWeight.w800),
              );
            },
          ),
          GetBuilder<PartController>(
            init: PartController(),
            builder: (_) {
              if (_.view == PartView.By100) {
                return Text(
                  '100개씩 보기',
                  textScaleFactor: 0.8,
                  style: appBarTextStyle.copyWith(fontWeight: FontWeight.w400),
                );
              } else {
                return Text(
                  '200개씩 보기',
                  textScaleFactor: 0.8,
                  style: appBarTextStyle.copyWith(fontWeight: FontWeight.w400),
                );
              }
            },
          )
        ],
      )
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
          ViewSelectButton(PartView.By100),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 12.0)),
          ViewSelectButton(PartView.By200)
        ],
      ),
    );
  }
}

class ViewSelectButton extends StatelessWidget {
  final PartView _view;
  ViewSelectButton(this._view);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PartController>(
      init: PartController(),
      builder: (_) {
        return GestureDetector(
          onTap: () => _.selectView(_view),
          child: CircleAvatar(
            backgroundColor: _view == _.view ? baseRed : baseGrey,
            child: Text(
              _view == PartView.By100 ? '100' : '200',
              textScaleFactor: 1.1,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
        );
      },
    );
  }
}

class PartListTile extends StatelessWidget {
  final int _index;
  PartListTile(this._index);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PartController>(
      builder: (_) {
        return Container(
          margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              _index == _.part
              ? BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 1), // changes position of shadow
                )
              : const BoxShadow(color: Colors.transparent),
            ],
          ),
          child: ListTile(
            leading: const Icon(
                Icons.play_circle_filled,
                color: baseGrey),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GetBuilder<LevelController>(
                  init: LevelController(),
                  builder: (_controller) {
                    return RichText(
                      text: TextSpan(
                          text: 'N${_controller.level} ',
                          style: const TextStyle(
                              color: Colors.black,
                              fontFamily: 'S-CoreDream',
                              fontWeight: FontWeight.w500,
                              fontSize: 22.0
                          ),
                          children: [
                            TextSpan(
                                text: 'Part${_index + 1}',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'S-CoreDream',
                                    fontWeight: FontWeight.w800,
                                    fontSize: 22.0
                                )
                            )
                          ]
                      ),
                    );
                  },
                ),
                Container(
                  width: 90,
                  child: Text(
                    _.view == PartView.By100
                      ? '${_index * 100 + 1}-${_index * 100 + 100}'
                      : '${_index * 200 + 1}-${_index * 200 + 200}',
                    style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w100
                    ),
                  ),
                )
              ],
            ),
            trailing: DottedCounter(0),
            onTap: () {
              PartController.to.selectPart(_index);
              Get.toNamed('/card');
            }
          ),
        );
      }
    );
  }
}

class PartListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LevelController>(
      init: LevelController(),
      builder: (_) {
        return Expanded(
          child: GetBuilder<PartController>(
            init: PartController(),
            builder: (_controller) {
              return ListView.builder(
                itemCount: _controller.view == PartView.By100
                    ? dataMap[_.level]!.length ~/ 100
                    : dataMap[_.level]!.length ~/ 200,
                itemBuilder: (_, index) {
                  return PartListTile(index);
                },
              );
            },
          )
        );
      },
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
          Padding(padding: const EdgeInsets.symmetric(horizontal: 2.5),),
          CircleAvatar(
            radius: 5,
            backgroundColor: _counter > 1
                ? const Color.fromRGBO(199, 70, 70, 80)
                : const Color.fromRGBO(180, 166, 152, 80),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 2.5),),
          CircleAvatar(
            radius: 5,
            backgroundColor: _counter > 2
                ? const Color.fromRGBO(199, 70, 70, 60)
                : const Color.fromRGBO(180, 166, 152, 60),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 2.5),),
          CircleAvatar(
            radius: 5,
            backgroundColor: _counter > 3
                ? const Color.fromRGBO(199, 70, 70, 40)
                : const Color.fromRGBO(180, 166, 152, 40),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 2.5),),
          CircleAvatar(
            radius: 5,
            backgroundColor: _counter > 4
                ? const Color.fromRGBO(199, 70, 70, 20)
                : const Color.fromRGBO(180, 166, 152, 20),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 2.5),),
        ],
      ),
    );
  }
}
