import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_todo_app/models/todo.dart';
import 'package:flutter_todo_app/services/api_service.dart';
import 'package:http/http.dart' as http;

const BASE_URL = "https://jsonplaceholder.typicode.com/";

class ApiServiceImpl implements ApiService {
  var _dio = Dio();

  @override
  Future<dynamic> getRequest(String url) async {
    try {
      return await _dio.get(url);
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
  }

  @override
  void init() {
    var options = BaseOptions(baseUrl: BASE_URL, responseType: ResponseType.plain);
    _dio = Dio(options);

    initializeInterceptor();
  }

  initializeInterceptor() {
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      // Do something before request is sent
      return handler.next(options); //continue
      // If you want to resolve the request with some custom data，
      // you can resolve a `Response` object eg: return `dio.resolve(response)`.
      // If you want to reject the request with a error message,
      // you can reject a `DioError` object eg: return `dio.reject(dioError)`
    }, onResponse: (response, handler) {
      // Do something with response data
      return handler.next(response); // continue
      // If you want to reject the request with a error message,
      // you can reject a `DioError` object eg: return `dio.reject(dioError)`
    }, onError: (DioError e, handler) {
      // Do something with response error
      return handler.next(e); //continue
      // If you want to resolve the request with some custom data，
      // you can resolve a `Response` object eg: return `dio.resolve(response)`.
    }));
  }

  @override
  Future postRequest(String url, Object object) {
    // TODO: implement postRequest
    throw UnimplementedError();
  }


}
