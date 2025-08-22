import 'package:flutter/material.dart';
import 'package:student_house/core/utils/colors.dart';

class SearchAndFilterContainers extends StatelessWidget {
  const SearchAndFilterContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: kDarkContainerColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 18,
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, size: 40, color: kDarkIconColor),
                    SizedBox(width: 8),
                    Text(
                      "Search by Address, City, or ZIP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: kDarkPrimaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.filter_list, size: 35),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
