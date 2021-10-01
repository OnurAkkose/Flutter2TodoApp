import 'package:flutter/material.dart';
import 'package:flutter_todo_app/pages/home/controller/home_controller.dart';
import 'package:flutter_todo_app/services/api_service.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final apiService = Get.find<ApiService>(); // daha önce apiservice home screen de inject edildiği için, buradan bu şekilde erişilir.
    final homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Get.back();
            //print(homeController.count);
          },
        ),
      ),
    );
  }
}
