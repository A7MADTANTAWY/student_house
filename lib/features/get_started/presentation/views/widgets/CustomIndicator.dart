import 'package:flutter/material.dart';
import 'package:student_house/core/utils/colors.dart';

class CustomIndicator extends StatelessWidget {
  final bool active;
  const CustomIndicator({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active ? theme.primaryColor : kUnActiveIndecator,
      ),
      width: active ? 16 : 10, // ✅ تكبير وتصغير الدائرة
      height: active ? 16 : 10,
    );
  }
}
