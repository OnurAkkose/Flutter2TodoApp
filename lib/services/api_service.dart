import 'package:dio/dio.dart';
import 'package:flutter_todo_app/models/todo.dart';

abstract class ApiService{
  void init();
  Future<dynamic> getRequest(String url);
  Future postRequest(String url, Object object);
}