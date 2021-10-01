import 'package:flutter/material.dart';
import 'package:flutter_todo_app/pages/post/widgets/text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: SafeArea(
        child: Stack(
          children:<Widget> [
            Align( alignment: Alignment(0.0,-0.4),child: inputText("title", 25.5)),
            Align( alignment: Alignment(0.0,0.0),child: inputText("title", 25.5)),
            Align(alignment: Alignment(0.5,0.7),child: ElevatedButton(style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 50)), onPressed: (){}, child: Text("Post",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15)),)))
          ] ,
        ),
      ),
    );
  }
}
