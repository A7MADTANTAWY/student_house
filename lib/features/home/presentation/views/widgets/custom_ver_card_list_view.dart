import 'package:flutter/material.dart';
import 'package:student_house/features/home/presentation/views/widgets/custom_ver_card.dart';

class CustomVerCardListView extends StatelessWidget {
  const CustomVerCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: CustomVerCard(),
          );
        },
        childCount: 10, // عدد العناصر اللي هتظهر
      ),
    );
  }
}
