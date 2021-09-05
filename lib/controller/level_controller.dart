import 'package:get/get.dart';

class LevelController extends GetxController {
  int selectedLevel = 5;

  void selectLevel(int level) {
    selectedLevel = level;
    update();
  }
}