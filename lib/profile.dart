// ignore_for_file: sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSalqHVsFs92wgAGaPrWchz4wn_XC-2jKT7A&usqp=CAU";
    var deviceSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 241, 238, 238),
        body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Widgets.circleImage(imageUrl),
              const SizedBox(
                height: 15,
              ),
              Widgets.userName(),
              const SizedBox(
                height: 10,
              ),
              Widgets.personalDetails(),
              const SizedBox(
                height: 15,
              ),
              Widgets.userInfo(
                context,
                Icons.mail,
                "MuhammadAbdullah@gmail.com",
              ),
              Widgets.userInfo(
                context,
                Icons.phone,
                "01816504243",
              ),
              Widgets.userInfo(
                context,
                Icons.location_city,
                "Agrabad",
              ),
              const SizedBox(
                height: 15,
              ),
              Widgets.Setting(),
              const SizedBox(
                height: 15,
              ),
              Widgets.userInfo(
                context,
                Icons.settings,
                "Settings",
              ),
              Widgets.userInfo(
                context,
                Icons.info,
                "About Us",
              ),
              Widgets.userInfo(
                context,
                Icons.change_history,
                "Change Theme",
              ),
              const SizedBox(
                height: 20,
              ),
              Widgets.Button(context)
            ],
          ),
        ),
      ),
    );
  }
}
