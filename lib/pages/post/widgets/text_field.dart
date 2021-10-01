import 'package:flutter/material.dart';

Widget inputText(String placeholder, double padding) {

  return Padding(
    padding: EdgeInsets.all(padding),
    child: TextFormField(
      decoration: InputDecoration(
        hintText: placeholder,
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    ),
  );
}