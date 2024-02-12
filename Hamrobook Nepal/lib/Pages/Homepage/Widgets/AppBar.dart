import 'package:e_book/Config/Colors.dart';
import 'package:e_book/Controller/AuthController.dart';
import 'package:e_book/Pages/ProfilePage/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 16.0),
            child: SvgPicture.asset("Assets/Icons/dashboard.svg"),

          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0,right: 120.0),
          child: Text(
            "Hamro Book",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        ),
      ],
    );
  }
}
