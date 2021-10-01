import 'dart:convert';
import 'package:flutter_todo_app/models/todo.dart';
import 'package:flutter_todo_app/services/api_service.dart';
import 'package:flutter_todo_app/services/api_service_impl.dart';
import 'package:flutter_todo_app/services/todo/todo_service.dart';
import 'package:get/get.dart';

class TodoServiceImpl extends TodoService {
  late ApiService _apiService;
  TodoServiceImpl() {
    _apiService = Get.put(ApiServiceImpl());
    _apiService.init();
  }
  @override
  Future<List<Todo>> getTodos() async {
    try {
      final response = await _apiService.getRequest("todos");
      final List reponseDecode = jsonDecode(response.data.toString());
      return reponseDecode.map((e) => Todo.fromJson(e)).toList();
    } on Exception catch (e) {
      print(e);
      throw e;
    }
  }
  @override
  Future deleteTodo(int todoId) {
    // TODO: implement deleteTodo
    throw UnimplementedError();
  }

  @override
  Future<Todo> getTodo() {
    // TODO: implement getTodo
    throw UnimplementedError();
  }

  @override
  Future postTodo(Todo todo) {
    // TODO: implement postTodo
    throw UnimplementedError();
  }

}
