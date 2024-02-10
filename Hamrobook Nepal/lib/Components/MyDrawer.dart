import 'package:e_book/Pages/Homepage/HomePage.dart';
import 'package:e_book/Pages/ProfilePage/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:e_book/Controller/AuthController.dart';
import 'package:get/get.dart';

final AuthController authController = Get.put(AuthController());

var myDrawer = Drawer(
  child: Column(
    children: [
      UserAccountsDrawerHeader(
        accountName: Text("${authController.auth.currentUser!.displayName}"),
        accountEmail: Text("${authController.auth.currentUser!.email}"),
        currentAccountPicture: CircleAvatar(
          child: Image.network(
            "${authController.auth.currentUser!.photoURL}",
            fit: BoxFit.cover,
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.add),
        title: Text("Add Book"),
        onTap: () {
          Get.to(ProfilePage());
        },
      ),
      ListTile(
        leading: Icon(Icons.exit_to_app),
        title: Text("Sign Out"),
        onTap: () {
          authController.signout();
        },
      ),
    ],
  ),
);
