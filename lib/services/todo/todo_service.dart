import 'package:flutter_todo_app/models/todo.dart';

abstract class TodoService{
    Future<List<Todo>> getTodos();
    Future postTodo(Todo todo);
    Future<Todo> getTodo();
    Future deleteTodo(int todoId);
}