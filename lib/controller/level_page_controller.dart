import 'package:get/get.dart';

class LevelPageController extends GetxController {
  int selectedLevel = 5;

  void selectLevel(int level) {
    selectedLevel = level;
    update();
  }
}