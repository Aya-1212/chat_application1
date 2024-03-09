// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_constructors_in_immutables

import 'package:chat_application_eraasoft/colors.dart';

import 'package:flutter/material.dart';

class contact extends StatelessWidget {
  contact({
    required this.name,
    required this.time,
    required this.image,
    required this.lastMessage,
    super.key,
    required this.ontap
  });
  final String name;
  final String lastMessage;
  final String image;
  final String time;
  final void Function()? ontap ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:ontap,
      child: ListTile(
        leading: CircleAvatar(radius: 30, backgroundImage: AssetImage(image)),
        title: Text(name,
            style: TextStyle(
              color: AppColors.black,
              fontSize: 22,
            )),
        subtitle: Text(lastMessage,
            style: TextStyle(
              color: AppColors.grey,
              fontSize: 18,
            )),
        trailing:
            Text(time, style: TextStyle(color: AppColors.black, fontSize: 14)),
            
      ),
    );
  }
}
