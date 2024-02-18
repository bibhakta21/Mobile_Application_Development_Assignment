import 'package:e_book/Pages/Homepage/HomePage.dart';
import 'package:e_book/Pages/WelcomePage/WelcomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SplaceController extends GetxController {
  final auth = FirebaseAuth.instance;

  @override
  void onInit() {
   
  }

  void splaceController() {
    Future.delayed(Duration(seconds: 6), () {
      if (auth.currentUser != null) {
        Get.offAll(HomePage());
      } else {
        Get.offAll(WelcomePage());
      }
    });
  }
}
