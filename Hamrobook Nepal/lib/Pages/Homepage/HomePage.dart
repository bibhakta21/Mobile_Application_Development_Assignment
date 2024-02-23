import 'package:e_book/Components/BookCard.dart';
import 'package:e_book/Components/BookTile.dart';
import 'package:e_book/Components/MyDrawer.dart';
import 'package:e_book/Controller/BookController.dart';
// import 'package:e_book/Models/Data.dart';
import 'package:e_book/Pages/BookDetails/BookDetails.dart';
import 'package:e_book/Pages/Homepage/Widgets/AppBar.dart';
import 'package:e_book/Pages/Homepage/Widgets/CategoryWidget.dart';
import 'package:e_book/Pages/Homepage/Widgets/MyInputeTextField.dart';
import 'package:e_book/Pages/ProfilePage/ProfilePage.dart'; // Import the profile page
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    BookController bookController = Get.put(BookController());
    bookController.getUserBook();

    // Define pages for bottom navigation bar
    List<Widget> pages = [
      Scaffold(
        drawer: myDrawer,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                color: Colors.blue,
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    HomeAppBar(),


                    SizedBox(height: 20),
                    MyInputTextField(),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Newly Added",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Obx(
                            () => Row(
                          children: bookController.bookData
                              .map(
                                (e) => BookCard(
                              title: e.title!,
                              coverUrl: e.coverUrl!,
                              ontap: () {
                                Get.to(BookDetails(
                                  book: e,
                                ));
                              },
                            ),
                          )
                              .toList(),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Available Books",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Obx(
                          () => Column(
                        children: bookController.bookData
                            .map(
                              (e) => BookTile(
                            ontap: () {
                              Get.to(BookDetails(book: e));
                            },
                            title: e.title!,
                            coverUrl: e.coverUrl!,
                            author: e.author!,
                            price: e.price!,
                            genre: "Mystery",
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
      ),
      Scaffold(
        body: Center(
          child: Text("Comming Soon :("),
        ),
      ),
      ProfilePage(), // Directly instantiate the ProfilePage
    ];

    return Scaffold(
      body: pages[0],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 2) {
            Get.to(() => ProfilePage()); // Navigate to ProfilePage for index 2
          } else {
            Get.to(() => pages[index]);
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Books',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
