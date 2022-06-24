import 'package:flutter/material.dart';

memberappsbar() {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.white,
    title: Row(
      children: [
        Icon(
          Icons.error_outline,
          color: Colors.black,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "Mahmudul",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
        Spacer(),
        Text(
          "Members",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
        Spacer(),
        Icon(
          Icons.notification_important,
          color: Colors.black,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.qr_code,
          color: Colors.black,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.menu_open_sharp,
          color: Colors.black,
        ),
      ],
    ),
  );
}
