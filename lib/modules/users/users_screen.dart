// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../models/user/user_model.dart';

class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: "ziad",
      phone: '01220330646',
    ),
    UserModel(
  id: 2,
  name: "abdo ziad",
  phone: '0122032246',
  ),
    UserModel(
  id: 3,
  name: "ahmed abdo",
  phone: '012288830646',
  ),
    UserModel(
      id: 4,
      name: "ziad",
      phone: '01220330646',
    ),
    UserModel(
      id: 5,
      name: "abdo ziad",
      phone: '0122032246',
    ),
    UserModel(
      id: 6,
      name: "ahmed abdo",
      phone: '012288830646',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Users",
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users [index]),
        separatorBuilder: (context,Index) => Container(
          height: 1.0,
          width: double.infinity,
          color: Colors.grey[300],

        ),
        itemCount: users.length,
      ),
    );
  }
  Widget buildUserItem( UserModel user ) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          child: Text(
            "${user.id}"
          ),
        ),
        SizedBox(width: 10.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
           "${user.name}",
              style: TextStyle(
                fontSize: 25.0 ,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "${user.phone}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),

          ],
        ),
      ],
    ),
  );
}
