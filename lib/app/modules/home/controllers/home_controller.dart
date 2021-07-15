import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  late AnimationController aniC;
  @override
  void onInit() {
    aniC = AnimationController(
      duration: Duration(
        seconds: 10,
      ),
      vsync: this,
    )..repeat();
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    aniC.dispose();
    // TODO: implement onClose
    super.onClose();
  }
}
