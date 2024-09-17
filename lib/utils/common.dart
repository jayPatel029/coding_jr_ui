import 'package:coding_jr_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height; // Custom height for the app bar

  const CustomAppBar({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, left: 16, right: 16), // Space at the top
      height: height, // Custom height
      decoration:  BoxDecoration(
        color: backgroundColor, // Background color for the app bar

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Profile picture (leading)
          Container(
            height: 80,
            width: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: const CircleAvatar(
              radius: 70, // Adjust the radius to change inner image size
              backgroundImage: AssetImage('assets/user.png'), // Profile picture
            ),
          ),

          // Title and Subheading (center)
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Christiana Amandla',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Lets Learn Smartly',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Search icon (actions)
          IconButton(
            onPressed: () {
              // Action for search button
            },
            icon: const Icon(Icons.search),
            iconSize: 30, // Adjust size of the search icon
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  // To satisfy PreferredSizeWidget, you need to provide preferredSize
  @override
  Size get preferredSize => Size.fromHeight(height); // Return the custom height
}


