import 'package:e_book/Controller/BookController.dart';
import 'package:e_book/Controller/SplaceController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplacePage extends StatelessWidget {
  const SplacePage({Key? key});

  @override
  Widget build(BuildContext context) {
    SplaceController splaceController = Get.put(SplaceController());
    BookController bookController = Get.put(BookController());
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: Center(
        child: Lottie.asset("Assets/Animation/bookanimation.json"),
      ),
    );
  }
}
