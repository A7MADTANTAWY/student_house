import 'package:flutter/material.dart';
import 'package:student_house/core/utils/images.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Let,s Find Your",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Color(0xff8997A9)),
                ),
                Text(
                  "Favorite Home",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(Images.profileImage),
            ),
          ],
        ),
      ),
    );
  }
}
