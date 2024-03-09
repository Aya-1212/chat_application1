// ignore_for_file: prefer_const_constructors_in_immutables, camel_case_types, prefer_const_constructors
import 'package:chat_application_eraasoft/chat_intetface.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  myApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatView(),
    );
  }
}
