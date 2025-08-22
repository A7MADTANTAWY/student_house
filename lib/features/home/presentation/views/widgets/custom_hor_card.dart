import 'package:flutter/material.dart';
import 'package:student_house/core/utils/colors.dart';
import 'package:student_house/core/utils/images.dart';

class CustomHorCard extends StatelessWidget {
  const CustomHorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 223,
      height: 242,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kDarkContainerColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ✅ الصورة
          Container(
            width: 223,
            height: 155,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), // لو عايز زوايا مدورة
              image: const DecorationImage(
                image: AssetImage(Images.testImage), // 👈 مسار الصورة
                fit: BoxFit.cover, // تغطي المساحة كلها
              ),
            ),
          ),

          // ✅ باقي التفاصيل
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // النصوص + الموقع
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lorem House",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "\$340 / month",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: kDarkPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: const [
                        Icon(Icons.location_on, size: 14, color: Colors.grey),
                        SizedBox(width: 4),
                        Text(
                          "Avenue, West Side",
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),

                // ✅ أيقونة الفيفوريت
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                    child: Icon(
                      Icons.bookmark_border,
                      size: 25,
                      color: kDarkPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
