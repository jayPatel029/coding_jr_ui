import 'package:coding_jr_ui/details_ui.dart';
import 'package:coding_jr_ui/home_ui.dart';
import 'package:coding_jr_ui/payment_ui.dart';
import 'package:coding_jr_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = Get.width;
    var screenHeight = Get.height;

    double buttonWidth = screenWidth * 0.5;
    if (screenWidth < 600) {
      buttonWidth = screenWidth * 0.8;
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => HomeUi());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: greenButton,
                fixedSize: Size(buttonWidth, 50),
              ),
              child: const Text(
                "Home UI",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => DetailsUi());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: greenButton,
                fixedSize: Size(buttonWidth, 50),
              ),
              child: const Text(
                "Details UI",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => PaymentUi());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: greenButton,
                fixedSize: Size(buttonWidth, 50),
              ),
              child: const Text(
                "Payment UI",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
