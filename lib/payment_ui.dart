
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coding_jr_ui/utils/colors.dart';

class PaymentUi extends StatefulWidget {
  const PaymentUi({super.key});

  @override
  State<PaymentUi> createState() => _PaymentUiState();
}

class _PaymentUiState extends State<PaymentUi> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = Get.width;
    double screenHeight = Get.height;
    bool isWeb = screenWidth >= 800;

    double containerHeight = isWeb ? 400 : screenHeight * 0.6;
    double containerWidth = isWeb ? 400 : screenWidth * 0.9;
    double iconSize = isWeb ? 80.0 : 120.0;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Center(
                  //!clip icon ctnr

                  child: Container(
                    height: isWeb ? containerWidth + 90 : containerHeight,
                    width: containerWidth,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.1,
                        ),
                        Text(
                          "Payment Success",
                          style: TextStyle(
                              fontSize: isWeb ? 20 : 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$35.00",
                          style: TextStyle(
                            fontSize: isWeb ? 28 : 34,
                            color: blueColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                        Container(
                          height:
                              isWeb ? screenHeight * 0.25 : screenHeight * 0.22,
                          width: containerWidth * 0.9,
                          decoration: BoxDecoration(
                            color: backgroundColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Name
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                  isWeb ? 20 : 16,
                                  isWeb ? 20 : 16,
                                  isWeb ? 16 : 8,
                                  isWeb ? 12 : 8,
                                ),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: const AssetImage(profileIcon),
                                      radius: isWeb ? 16 : 12,
                                    ),
                                    SizedBox(
                                      width: isWeb ? 10 : 5,
                                    ),
                                    Text(
                                      "Christiana Amandla",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade700,
                                          fontSize: isWeb ? 16 : 14),
                                    )
                                  ],
                                ),
                              ),

                              // Course Name
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: isWeb ? 20 : 16,
                                ),
                                child: Text(
                                  "Adobe Xd Editing Course",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: isWeb ? 16 : 18),
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.05,
                              ),

                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: isWeb ? 20 : 16,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "ID Transcription",
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: isWeb ? 14 : 16),
                                        ),
                                        Text(
                                          "TA12345WQ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: isWeb ? 16 : 18),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Invoice Date",
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: isWeb ? 14 : 16),
                                        ),
                                        Text(
                                          "Nov 14, 2023",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: isWeb ? 16 : 18),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),

                        //! Barcode

                        Container(
                          height: screenHeight * 0.08,
                          width: containerWidth * 0.9,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                                image: AssetImage(barc), fit: BoxFit.cover),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -iconSize / 2,
                  left: isWeb
                      ? screenWidth / 2 - iconSize / 2
                      : containerWidth / 2 - iconSize / 2 + 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Icon(
                      Icons.check_circle_rounded,
                      size: iconSize,
                      color: blueColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),

            //done btn


            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: greenButton,
                padding: const EdgeInsets.symmetric(vertical: 16),
                fixedSize: Size(containerWidth * 0.9, screenHeight * 0.06),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "Done",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black, // Text color
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
