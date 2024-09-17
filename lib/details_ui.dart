import 'package:coding_jr_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsUi extends StatefulWidget {
  const DetailsUi({super.key});

  @override
  State<DetailsUi> createState() => _DetailsUiState();
}

class _DetailsUiState extends State<DetailsUi> {
  double screenWidth = Get.width;
  double screenHeight = Get.height;

  @override
  Widget build(BuildContext context) {
    bool isDesktop = screenWidth >= 1024;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: isDesktop ? 24 : 16),
            child: const Icon(Icons.notifications_none_rounded),
          )
        ],
        leading: const Icon(Icons.arrow_back_ios_new_rounded),
        centerTitle: true,
        title: const Text("Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            //! cont1

            Padding(
              padding: EdgeInsets.all(
                  isDesktop ? screenWidth * 0.05 : screenWidth * 0.04),
              child: Container(
                height: isDesktop ? screenHeight * 0.4 : screenHeight * 0.30,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        isDesktop ? screenWidth * 0.01 : screenWidth * 0.04,
                        isDesktop ? screenWidth * 0.01 : screenWidth * 0.04,
                        isDesktop ? screenWidth * 0.01 : screenWidth * 0.04,
                        isDesktop ? screenWidth * 0.01 : screenWidth * 0.00,
                      ),
                      child: const Text("Our Student"),
                    ),

                    //! comp/hrs

                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        isDesktop ? screenWidth * 0.01 : screenWidth * 0.04,
                        isDesktop ? screenWidth * 0.01 : screenWidth * 0.04,
                        isDesktop ? screenWidth * 0.01 : screenWidth * 0.04,
                        isDesktop ? screenWidth * 0.01 : screenWidth * 0.00,
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: isDesktop ? 25 : 15,
                            backgroundImage: const AssetImage(user1),
                          ),
                          SizedBox(
                              width: isDesktop
                                  ? screenWidth * 0.01
                                  : screenWidth * 0.02),
                          CircleAvatar(
                            radius: isDesktop ? 25 : 15,
                            backgroundImage: const AssetImage(user2),
                          ),
                          SizedBox(
                              width: isDesktop
                                  ? screenWidth * 0.01
                                  : screenWidth * 0.02),
                          CircleAvatar(
                            radius: isDesktop ? 25 : 15,
                            backgroundImage: const AssetImage(user3),
                          ),
                          SizedBox(
                              width: isDesktop
                                  ? screenWidth * 0.01
                                  : screenWidth * 0.02),
                          CircleAvatar(
                            radius: isDesktop ? 25 : 15,
                            backgroundImage: const AssetImage(user4),
                          ),
                          SizedBox(
                              width: isDesktop
                                  ? screenWidth * 0.01
                                  : screenWidth * 0.02),
                          CircleAvatar(
                            radius: isDesktop ? 21 : 15,
                            backgroundImage: const AssetImage(profileIcon),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                        height: isDesktop
                            ? screenHeight * 0.02
                            : screenHeight * 0.025),

                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: isDesktop
                              ? screenWidth * 0.03
                              : screenWidth * 0.04),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Photoshop Editing Course",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: isDesktop ? 22 : 18,
                            ),
                          ),
                          SizedBox(
                              height: isDesktop
                                  ? screenHeight * 0.01
                                  : screenHeight * 0.005),
                          Text(
                            "A representation that can convey the three-dimensional aspect of a design through a two-dimensional medium.", // "A representation that can convey the three-dimensional aspect of a design through a two-dimensional medium.",
                            softWrap: true,
                            style: TextStyle(
                              fontSize: isDesktop ? 16 : 14,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          SizedBox(
                              height: isDesktop
                                  ? screenHeight * 0.03
                                  : screenHeight * 0.025),
                          Row(
                            children: [
                              Icon(
                                Icons.play_circle_outline_rounded,
                                color: Colors.black87,
                                size: isDesktop ? 24 : 22,
                              ),
                              SizedBox(width: isDesktop ? 8 : 4),
                              Text(
                                "30 Lessons",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: isDesktop ? 16 : 14,
                                ),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.access_time_rounded,
                                color: Colors.black87,
                                size: isDesktop ? 24 : 22,
                              ),
                              SizedBox(width: isDesktop ? 8 : 4),
                              Text(
                                "13h 30min",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: isDesktop ? 16 : 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
                height: isDesktop ? screenHeight * 0.02 : screenHeight * 0.01),

            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      isDesktop ? screenWidth * 0.07 : screenWidth * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Video",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: isDesktop ? 20 : 17,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: isDesktop ? 17 : 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: isDesktop ? screenHeight * 0.02 : screenHeight * 0.01),

            //!card list

            SizedBox(
              height: screenHeight * (isDesktop ? 0.60 : 0.70),
              child: ListView.builder(
                itemCount: lecDur.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  String title = lecTitle[index];
                  String duration = lecDur[index];
                  return Padding(
                    padding: EdgeInsets.fromLTRB(
                      isDesktop ? screenWidth * 0.05 : screenWidth * 0.04,
                      0,
                      isDesktop ? screenWidth * 0.04 : screenWidth * 0.02,
                      screenHeight * (isDesktop ? 0.02 : 0.01),
                    ),
                    child: Card(
                      borderOnForeground: true,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(isDesktop ? 12 : 10),
                      ),
                      elevation: 0,
                      child: Container(
                        padding:
                            EdgeInsets.all(isDesktop ? screenWidth * 0.04 : 16),
                        child: Row(
                          children: [
                            Container(
                              width: isDesktop ? 80 : 60,
                              height: isDesktop ? 80 : 60,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius:
                                    BorderRadius.circular(isDesktop ? 12 : 10),
                                border:
                                    Border.all(color: Colors.grey, width: 2),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.lock,
                                  size: isDesktop ? 45 : 35,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ),
                            SizedBox(width: isDesktop ? screenWidth * 0.03 : 8),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(
                                    isDesktop ? screenWidth * 0.03 : 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      title,
                                      style: TextStyle(
                                        fontSize: isDesktop ? 20 : 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    SizedBox(
                                        height: isDesktop
                                            ? screenHeight * 0.01
                                            : screenHeight * 0.005),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          color: Colors.grey,
                                          size: isDesktop ? 24 : 21,
                                        ),
                                        SizedBox(
                                            width: isDesktop
                                                ? screenWidth * 0.02
                                                : screenWidth * 0.01),
                                        Text(
                                          duration,
                                          style: TextStyle(
                                            fontSize: isDesktop ? 17 : 15,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            //! button play

                            Container(
                              width: isDesktop
                                  ? screenWidth * 0.3
                                  : screenWidth * 0.27,
                              height: isDesktop
                                  ? screenHeight * 0.06
                                  : screenHeight * 0.04,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                borderRadius:
                                    BorderRadius.circular(isDesktop ? 10 : 5),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.play_circle_outline_rounded,
                                      color: greenButton,
                                      size: isDesktop ? 30 : 24,
                                    ),
                                    Text(
                                      "Play Video",
                                      style: TextStyle(
                                        fontSize: isDesktop ? 18 : 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: isDesktop
          ? null
          : BottomAppBar(
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: greenButton,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),

                  // Enroll button
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: greenButton,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        "Enroll Now",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black, // Text color
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  List<String> lecTitle = [
    "Introduction",
    "Install Software",
    "Learn Tools",
    "Tracing Sketsa",
    "Introduction",
    "Install Software",
    "Learn Tools",
    "Tracing Sketsa"
  ];

  List<String> lecDur = [
    "3h 30min",
    "1h 20min",
    "2h 30min",
    "1h 10min",
    "3h 30min",
    "1h 20min",
    "2h 30min",
    "1h 10min",
  ];
}
