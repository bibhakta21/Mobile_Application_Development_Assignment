import 'package:e_book/Components/PrimaryButton.dart';
import 'package:e_book/Controller/AuthController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  AuthController authController = Get.put(AuthController());
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: [
          // First Slide
          _buildSlide(
            context,
            "Assets/Images/welcome.png",
            "Discover New Books",
            "Explore a wide variety of genres and discover your next favorite book.",
            Colors.blue, // Change color to blue
          ),

          // Second Slide
          _buildSlide(
            context,
            "Assets/Images/reading3.png",
            "Hamro Book",
            "Improve your Knowledge. Read us",
            Colors.green, // Change color to green
          ),

          // Third Slide with Login Button
          _buildThirdSlide(context),
        ],
      ),
    );
  }

  Widget _buildSlide(BuildContext context, String imagePath, String title, String description, Color bgColor) {
    return Container(
      color: bgColor, // Set background color
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 380,
            height: 300,
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Theme.of(context).colorScheme.background,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "${_currentPage + 1}/3",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.background,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildThirdSlide(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          Container(
            height: 500,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50),
                      Image.asset(
                        "Assets/Images/welcome.png",
                        width: 380,
                        height: 250,
                      ),
                      const SizedBox(height: 60),
                      Text(
                        "Hamro Book",
                        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: Theme.of(context).colorScheme.background,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Flexible(
                        child: Text(
                          "Here you can find the best books for you and you can also read books and listen to books.",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Theme.of(context).colorScheme.background,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Contact Us",
                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: Theme.of(context).colorScheme.background,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        "bibhaktalamsal8@gmail.com or 9813056161",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Colors.white, // Set text color to white
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: PrimaryButton(
              btnName: "LOGIN WITH GOOGLE",
              ontap: () {
                authController.loginWithEmail();
              },
              bgColor: Colors.blue, // Set button background color to blue
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "${_currentPage + 1}/3",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        ],
      ),
    );
  }
}
