import 'package:flutter/material.dart';
import 'package:student_house/core/utils/colors.dart';

class HomeCategoryListView extends StatelessWidget {
  final List<String> categories = const [
    "Recommended",
    "Popular",
    "Newest",
    "Top Rated",
    "Nearby",
  ];

  const HomeCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 45,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return SizedBox(width: 20);
            }
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: index == 1
                      ? kDarkSelectedCategory
                      : kDarkContainerColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 2,
                  ),
                  child: Center(
                    child: Text(
                      style: TextStyle(
                        color: index == 1 ? kDarkPrimaryColor : null,
                      ),
                      categories[index - 1],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
