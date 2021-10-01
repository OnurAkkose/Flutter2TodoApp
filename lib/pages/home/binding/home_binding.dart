import 'package:flutter_todo_app/pages/home/controller/home_controller.dart';
import 'package:flutter_todo_app/services/todo/todo_service_impl.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {// all dependencies and states
    Get.put(TodoServiceImpl()); //dependency injection
    Get.put(HomeController());
  }
}