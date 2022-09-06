import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xpenz/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 100, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "X",
                          style: TextStyle(
                              color: Colors.amberAccent,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2),
                        ),
                        Text(
                          "pen",
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2),
                        ),
                        Text(
                          "Z",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 75),
              Image.asset(
                'assets/images/splash_screen_image.png',
              ),
              const SizedBox(height: 100),
              SizedBox(
                width: 180.0,
                height: 50.0,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => HomeScreen()),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.redAccent),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Next",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
