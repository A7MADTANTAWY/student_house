import 'package:flutter/material.dart';
import 'package:student_house/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      body: const HomeViewBody(),
    );
  }
}
