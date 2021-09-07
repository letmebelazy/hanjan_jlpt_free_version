import 'package:get/get.dart';

enum PartView {
  By100,
  By200
}

class PartController extends GetxController {
  static PartController get to => Get.find();

  int part = 0;
  int counter = 0;
  PartView view = PartView.By100;

  void selectPart(int part) {
    this.part = part;
    update();
  }
  
  void selectView(PartView view) {
    this.view = view;
    update();
  }
}