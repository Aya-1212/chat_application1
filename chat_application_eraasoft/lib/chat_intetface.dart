// ignore_for_file: prefer_const_constructors, file_names, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:chat_application_eraasoft/application_widgets/contacts.dart';
import 'package:chat_application_eraasoft/application_widgets/favContact.dart';
import 'package:chat_application_eraasoft/application_widgets/users.dart';
import 'package:chat_application_eraasoft/colors.dart';
import 'package:chat_application_eraasoft/message.dart';
import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {
  ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            backgroundColor: AppColors.blue,
            title: Text('Chats',
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600)),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    color: AppColors.white,
                    size: 25,
                  )),
            ],
          )),
      body: Column(children: [
        Fav_contact(),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 14,
            ),
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return contact(
                    ontap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MessagesView(
                            lastMessage: usersApp[index].image,
                            name: usersApp[index].name),
                      ));
                    },
                    name: usersApp[index].name,
                    image: usersApp[index].image,
                    lastMessage: usersApp[index].lastMessage,
                    time: usersApp[index].time,
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 15,
                  );
                },
                itemCount: 6),
          ),
        )
      ]),
    );
  }
}
