import 'package:get/get.dart';

class LevelController extends GetxController {
  int level = 5;

  void selectLevel(int level) {
    this.level = level;
    update();
  }
}