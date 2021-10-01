import 'package:flutter/material.dart';
import 'package:flutter_todo_app/pages/detail/binding/detail_binding.dart';
import 'package:flutter_todo_app/pages/detail/view/detail.dart';
import 'package:flutter_todo_app/pages/home/binding/home_binding.dart';
import 'package:flutter_todo_app/pages/home/view/home.dart';
import 'package:flutter_todo_app/pages/login/binding/login_binding.dart';
import 'package:flutter_todo_app/pages/login/view/login.dart';
import 'package:flutter_todo_app/pages/post/binding/post_binding.dart';
import 'package:flutter_todo_app/pages/post/view/post.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      getPages: [
        GetPage(name: "/login", page: () => LoginScreen(), binding: LoginBinding()),
        GetPage(name: "/home", page: () =>  HomeScreen(), binding: HomeBinding()),
        GetPage(name: "/detail", page: () =>  DetailScreen(), binding: DetailBinding()),
        GetPage(name: "/post", page: () =>  PostScreen(), binding: PostBinding()),
      ],
      initialRoute: "/login",
    );
  }
}

