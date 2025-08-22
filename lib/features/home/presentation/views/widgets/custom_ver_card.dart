import 'package:flutter/material.dart';
import 'package:student_house/core/utils/colors.dart';
import 'package:student_house/core/utils/images.dart';

class CustomVerCard extends StatelessWidget {
  const CustomVerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 109,
        decoration: BoxDecoration(
          color: kDarkContainerColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 👇 الصورة
              Container(
                height: 89,
                width: 89,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage(Images.testImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(width: 8),

              // 👇 النصوص + التفاصيل
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ⭐ تقييم + نوع
                    Row(
                      children: const [
                        Icon(Icons.star, size: 18, color: Colors.amber),
                        SizedBox(width: 4),
                        Text(
                          "4.5",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Apartment",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),

                    // 🏡 اسم العقار
                    const Text(
                      "Woodland Apartment",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),

                    // 📍 الموقع
                    Row(
                      children: const [
                        Icon(Icons.location_on, size: 14, color: Colors.grey),
                        SizedBox(width: 4),
                        Flexible(
                          child: Text(
                            "1012 Ocean avanue, New yourk, USA",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),

                    // 💲 السعر + التفاصيل
                    Row(
                      children: const [
                        Icon(Icons.square_foot, size: 16, color: Colors.green),
                        SizedBox(width: 4),
                        Text("155 m²", style: TextStyle(fontSize: 10)),

                        SizedBox(width: 8),

                        Icon(Icons.bed, size: 16, color: Colors.blueGrey),
                        SizedBox(width: 4),
                        Text("4 Beds", style: TextStyle(fontSize: 10)),

                        Spacer(),
                        Text(
                          "\$340/month",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kDarkPrimaryColor,
                            fontSize: 12,
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
    );
  }
}
