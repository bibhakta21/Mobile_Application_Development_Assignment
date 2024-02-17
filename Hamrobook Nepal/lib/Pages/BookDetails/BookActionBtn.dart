import 'package:e_book/Pages/BookPage/BookPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BookActionBtn extends StatelessWidget {
  final String bookUrl;

  const BookActionBtn({super.key, required this.bookUrl});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60, // Adjust the height to make the button smaller
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: () {
            Get.to(BookPage(
              bookUrl: bookUrl,
            ));
          },
          
        ),
      ),
    );
  }
}
