import 'package:e_book/Controller/BookController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MyInputTextField extends StatelessWidget {
  const MyInputTextField({super.key});

  @override
  Widget build(BuildContext context) {
    BookController bookController = Get.put(BookController());
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.background,
      ),
      child: Row(
        children: [
          SizedBox(width: 20),
          InkWell(
            onTap: () {
              bookController.getAllBooks(); // Reset the book list when the search button is tapped
            },
            child: SvgPicture.asset("Assets/Icons/search.svg"),
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              onChanged: (value) {
                bookController.searchBooks(value);
              },
              decoration: const InputDecoration(
                hintText: "Search Book",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
