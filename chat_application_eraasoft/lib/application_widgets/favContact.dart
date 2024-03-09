// ignore_for_file: prefer_const_constructors, camel_case_types, file_names

import 'package:chat_application_eraasoft/colors.dart';
import 'package:chat_application_eraasoft/application_widgets/users.dart';
import 'package:flutter/material.dart';

class Fav_contact extends StatelessWidget {
  const Fav_contact({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Padding(
             padding: const EdgeInsets.symmetric(vertical: 20 , horizontal: 15),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   'Favourite Contacts',
                   style: TextStyle(
                     color: AppColors.white,
                     fontSize: 24,
                     fontWeight: FontWeight.w600,
                   ),
                 ),
                 SizedBox(height: 15,),
                 SizedBox(
                   height: 100,
                   child: ListView.separated(
                       scrollDirection: Axis.horizontal,
                       itemBuilder: (context, index) {
                         return Column(children: [
                           CircleAvatar(
                           radius: 25,
                           backgroundImage: AssetImage(usersApp[index].image)),
                         SizedBox(height: 10,),
                         Text(usersApp[index].name,style: TextStyle(color: AppColors.white,fontSize: 15,),),],);
                       },
                       separatorBuilder: (context, index) {
                         return SizedBox(
                           width: 12,
                         );
                       },
                       itemCount:  usersApp.length,),
                 )
               ],
             ),
           );
  }
}
