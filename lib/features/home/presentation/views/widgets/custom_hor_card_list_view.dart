import 'package:flutter/material.dart';
import 'package:student_house/features/home/presentation/views/widgets/custom_hor_card.dart';

class CustomHorCardListView extends StatelessWidget {
  const CustomHorCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 242,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            if (index == 0) {
              return SizedBox(width: 20);
            }
            return Padding(
              padding: const EdgeInsets.only(right: 15),
              child: CustomHorCard(),
            );
          },
        ),
      ),
    );
  }
}
