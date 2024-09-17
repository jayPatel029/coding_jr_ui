import 'package:coding_jr_ui/details_ui.dart';
import 'package:coding_jr_ui/home_ui.dart';
import 'package:coding_jr_ui/payment_ui.dart';
import 'package:coding_jr_ui/temp.dart';
import 'package:coding_jr_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: backgroundColor,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:
            // Temp(),
        // PaymentUi()
        // DetailsUi(),
        // HomeUi(),
        HomeScreen(),
        );
  }
}
