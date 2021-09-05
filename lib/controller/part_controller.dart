import 'package:get/get.dart';

enum PartView {
  By100,
  By200
}

class PartController extends GetxController {
  int level = 0;
  int counter = 0;
  PartView view = PartView.By100;

  @override
  void onInit() {
    super.onInit();

  }
}