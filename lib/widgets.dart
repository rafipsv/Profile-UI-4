// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Widgets {
  static Widget circleImage(
    String imageUrl,
  ) {
    return CircleAvatar(
      radius: 50,
      backgroundImage: NetworkImage(
        imageUrl,
      ),
    );
  }

  static Widget userName() {
    return const Text(
      "Muhammad Abdullah",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  static Widget personalDetails() {
    return Row(
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Personal Details",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  static Widget userInfo(
    BuildContext context,
    IconData icon,
    String title,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 2.0,
        child: ListTile(
          leading: Icon(icon),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

  static Widget Setting() {
    return Row(
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Settings",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  static Widget Button(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.07,
      color: Colors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.logout,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(width: 10,),
          Text(
            "Logout",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),
          ),
        ],
      ),
    );
  }
}
