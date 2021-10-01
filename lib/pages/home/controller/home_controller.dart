import 'package:flutter_todo_app/models/todo.dart';
import 'package:flutter_todo_app/services/todo/todo_service.dart';
import 'package:flutter_todo_app/services/todo/todo_service_impl.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  late TodoService _todoService;

  HomeController(){
    _todoService = Get.find<TodoServiceImpl>();
    loadTodos();
  }
  RxBool isLoading = false.obs;
  RxList<Todo> todos = new RxList<Todo>();

  completeTodo(int index){
    todos.removeAt(index);
  }
  loadTodos() async {
    showLoading();
    List<Todo> result = await _todoService.getTodos();
    hideLoading();
    if (result.isNotEmpty) {
      todos = result.obs;
    }
  }
    showLoading(){
      isLoading.toggle();
    }
    hideLoading(){
      isLoading.toggle();
    }
}
