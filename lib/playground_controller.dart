import 'package:get/get.dart';

class PlaygroundController extends GetxController {
  final count = 0.obs;

  void increment() {
    count.value++;
  }
}