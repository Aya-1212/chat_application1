// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:chat_application_eraasoft/application_widgets/custom_chat.dart';
import 'package:chat_application_eraasoft/colors.dart';
import 'package:flutter/material.dart';

class MessagesView extends StatelessWidget {
  MessagesView({
    super.key,
    required this.lastMessage,
    required this.name,
  });
  final String lastMessage;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(25),
          child: AppBar(
            backgroundColor: AppColors.blue,
            centerTitle: true,
            title: Text(
              name,
              style: TextStyle(color: AppColors.white),
            ),
            actions: [
              Icon(
                Icons.more_horiz,
                color: AppColors.white,
              )
            ],
          )),
      backgroundColor: AppColors.blue,
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  )),
              child: Column(
                children: [
                  ChatMessages(
                      text1: 'hello aya', text2: 'how are you', text3: 'fine'),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Text(lastMessage,
                        style: TextStyle(color: AppColors.blue)),
                  ),
                ],
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
                label: Text(
                  'Type your Message here',
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: AppColors.messageBackground,
                    )),
                    focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: AppColors.messageBackground,
                    ))
                    ),
          )
        ],
      )),
    );
  }
}
