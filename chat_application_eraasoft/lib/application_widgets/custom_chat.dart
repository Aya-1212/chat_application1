import 'package:chat_application_eraasoft/colors.dart';
import 'package:flutter/material.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({super.key, required this.text1, required this.text2, required this.text3});
    final String text1;
    final String text2;
    final String text3;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '00:00',
          style: TextStyle(color: AppColors.grey),
        ),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
            color: AppColors.messageBackground,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Text(text1,
              style: TextStyle(
                color: AppColors.grey,
              )),
        )),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.messageBackground,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                )),
            child: Text(text2, style: TextStyle(color: AppColors.grey)),
          ),
        ),
        //borderRadius: BorderRadius.all(Radius.circular(20),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.blue,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Text(text3, style: TextStyle(color: AppColors.white)),
          ),
        )
      ],
    );
  }
}
