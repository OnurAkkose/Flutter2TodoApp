import 'package:flutter_todo_app/pages/detail/controller/detail_controller.dart';
import 'package:get/get.dart';

class DetailBinding extends Bindings{
  @override
  void dependencies() {
      Get.put(DetailController());
  }
}