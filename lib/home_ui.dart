import 'package:coding_jr_ui/utils/colors.dart';
import 'package:coding_jr_ui/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = Get.width;
    double screenHeight = Get.height;

    bool isDesktop = screenWidth >= 1024;

    // var cardIcon;
    return Scaffold(
        appBar: !isDesktop ? const CustomAppBar(height: 125) : null,
        body: Row(
          children: [
            //!show sidebar

            if (isDesktop)
              SizedBox(
                width: screenWidth * 0.15,
                child: const SidebarWeb(),
              ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal:
                        isDesktop ? screenWidth * 0.05 : screenWidth * 0.04,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenWidth * 0.02,
                      ),
                      //! top cont course
                      Container(
                        height: isDesktop
                            ? screenHeight * 0.25
                            : screenHeight * 0.25,
                        width: screenWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: greenButton,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  screenWidth * 0.04,
                                  screenHeight * 0.02,
                                  screenWidth * 0.04,
                                  screenHeight * 0.02),
                              child: Container(
                                height: screenHeight * 0.08,
                                width: screenWidth,
                                decoration: BoxDecoration(
                                  color: lgUiColor,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.03),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Mathematics Course"),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: greenButton,
                                        ),
                                        child: TextButton.icon(
                                          onPressed: () {},
                                          label: const Text(
                                            "19 Nov, 2023",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          icon: const Icon(
                                            Icons.date_range_rounded,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.04),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: screenHeight * 0.03,
                                    backgroundColor: lgUiColor,
                                    child: Icon(
                                      Icons.check_circle_rounded,
                                      color: greenButton,
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.04,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Completed"),
                                      Text(
                                        "20",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.05,
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.07,
                                    child: VerticalDivider(
                                      color: lgUiColor,
                                      thickness: 2,
                                      width: 2,
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.05,
                                  ),
                                  CircleAvatar(
                                    radius: screenHeight * 0.03,
                                    backgroundColor: lgUiColor,
                                    child: Icon(
                                      Icons.access_time_filled_rounded,
                                      color: greenButton,
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.04,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Hours Spent"),
                                      Text(
                                        "455",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
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
                        height: screenHeight * 0.02,
                      ),

                      //! pop/view 1

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular Courses",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: isDesktop ? 20 : 17,
                            ),
                          ),
                          const Text(
                            "View All",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),

                      SizedBox(
                        height: screenHeight * 0.03,
                      ),

                      //! card list 1 horizontal

                      SizedBox(
                        height: isDesktop
                            ? screenHeight * 0.39
                            : screenHeight * 0.35,
                        child: ListView.builder(
                          itemCount: cardIcon.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * 0.02,
                                  0, screenWidth * 0.02, screenHeight * 0.01),
                              child: Card(
                                borderOnForeground: true,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                elevation: 0,
                                child: Container(
                                  width:
                                      screenWidth * (isDesktop ? 0.27 : 0.55),
                                  padding: EdgeInsets.all(screenWidth * 0.03),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Image.asset(
                                          cardIcon[index],
                                          width: screenWidth * 0.15,
                                          height: screenHeight * 0.1,
                                        ),
                                      ),
                                      SizedBox(
                                        height: screenHeight * 0.02,
                                      ),
                                      Text(
                                        cardTitle[index],
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      SizedBox(height: screenHeight * 0.01),
                                      Row(
                                        children: [
                                          Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              const CircleAvatar(
                                                radius: 12,
                                                backgroundImage:
                                                    AssetImage(user1),
                                              ),
                                              const Positioned(
                                                left: 16,
                                                child: CircleAvatar(
                                                  radius: 12,
                                                  backgroundImage:
                                                      AssetImage(user2),
                                                ),
                                              ),
                                              const Positioned(
                                                left: 32,
                                                child: CircleAvatar(
                                                  radius: 12,
                                                  backgroundImage:
                                                      AssetImage(user3),
                                                ),
                                              ),
                                              Positioned(
                                                left: 48,
                                                child: Container(
                                                  width: 24,
                                                  height: 24,
                                                  decoration: BoxDecoration(
                                                    color: lgUiColor,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: const Center(
                                                    child: Text(
                                                      "+20",
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: screenWidth * 0.15,
                                          ),
                                          const Text(
                                            "Participant",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: screenHeight * 0.01,
                                      ),
                                      const Divider(),
                                      SizedBox(
                                        height: screenHeight * 0.01,
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                            size: 22,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "4.3 ",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ),
                                          ),
                                          Text(
                                            "(230)",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10,
                                            ),
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.play_circle_outline,
                                            color: Colors.grey,
                                            size: 22,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "30 Lessons",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "More Courses",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: isDesktop ? 20 : 17,
                            ),
                          ),
                          const Text(
                            "View All",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),

                      //! card list 2 verti

                      SizedBox(
                        height: isDesktop
                            ? screenHeight * 0.45
                            : screenHeight * 0.45,
                        child: ListView.builder(
                          itemCount: cardIcon.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * 0.02,
                                  0, screenWidth * 0.02, screenHeight * 0.01),
                              child: Card(
                                borderOnForeground: true,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                elevation: 0,
                                child: Container(
                                  padding: EdgeInsets.all(screenWidth * 0.03),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          color: backgroundColor,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            cardIcon[index],
                                            width: 60,
                                            height: 60,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              cardTitle[index],
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black87,
                                              ),
                                            ),
                                            const Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                  size: 20,
                                                ),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Text(
                                                  "4.3 ",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14),
                                                ),
                                                Text(
                                                  "(230)",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 10),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Icon(
                                                  Icons.play_circle_outline,
                                                  color: Colors.grey,
                                                  size: 20,
                                                ),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Text(
                                                  "30 Lessons",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14),
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
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: !isDesktop
            ? BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                selectedItemColor: greenButton,
                unselectedItemColor: Colors.grey.shade400,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home, size: 30),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border, size: 30),
                    label: 'Favorites',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_outlined, size: 30),
                    label: 'Notifications',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline, size: 30),
                    label: 'Profile',
                  ),
                ],
              )
            : null);
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<String> cardIcon = [
    adbps,
    adbil,
    adbps,
    adbil,
  ];
  List<String> cardTitle = [
    "Photoshop Editing Course",
    "Illustrator Editing Course",
    "Photoshop Editing Course",
    "Illustrator Editing Course",
  ];
}

//sidebar web
class SidebarWeb extends StatelessWidget {
  const SidebarWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.home, size: 30),
            title: const Text("Home", style: TextStyle(fontSize: 18)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border, size: 30),
            title: const Text("Favorites", style: TextStyle(fontSize: 18)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.notifications_outlined, size: 30),
            title: const Text("Notifications", style: TextStyle(fontSize: 18)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person_outline, size: 30),
            title: const Text("Profile", style: TextStyle(fontSize: 18)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
