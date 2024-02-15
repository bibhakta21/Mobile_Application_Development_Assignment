import 'package:e_book/Components/BackButton.dart';
import 'package:e_book/Components/BookTile.dart';
import 'package:e_book/Controller/AuthController.dart';
import 'package:e_book/Controller/BookController.dart';
import 'package:e_book/Pages/AddNewBook/AddNewBook.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_book/Pages/Homepage/HomePage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    BookController bookController = Get.put(BookController());

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddNewBookPage());
        },
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.background,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              color: Theme.of(context).colorScheme.primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyBackButton(),
                            Padding(
                              padding: const EdgeInsets.only(right: 120), // Add padding to the right side
                              child: Text(
                                "Add book",
                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: Theme.of(context).colorScheme.background,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Your Books", style: Theme.of(context).textTheme.labelMedium),
                    ],
                  ),
                  SizedBox(height: 20),
                  Obx(
                        () => Column(
                      children: bookController.currentUserBooks
                          .map(
                            (e) => BookTile(
                          title: e.title!,
                          coverUrl: e.coverUrl!,
                          author: e.author!,
                          price: e.price!,
                          genre: "Genre",
                          ontap: () {},
                        ),
                      )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
