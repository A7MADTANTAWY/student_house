import 'package:flutter/material.dart';
import 'package:student_house/features/home/presentation/views/widgets/custom_hor_card_list_view.dart';
import 'package:student_house/features/home/presentation/views/widgets/custom_ver_card_list_view.dart';
import 'package:student_house/features/home/presentation/views/widgets/home_category_list_view.dart';
import 'package:student_house/features/home/presentation/views/widgets/home_view_header.dart';
import 'package:student_house/features/home/presentation/views/widgets/home_view_title.dart';
import 'package:student_house/features/home/presentation/views/widgets/search_and_filter_containers.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 40)),
        HomeViewHeader(),
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        SearchAndFilterContainers(),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        HomeCategoryListView(),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        CustomHorCardListView(),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        HomeViewTitle(),
        SliverToBoxAdapter(child: SizedBox(height: 18)),
        CustomVerCardListView(),
      ],
    );
  }
}
