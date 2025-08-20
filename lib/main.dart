import 'package:flutter/material.dart';
import 'package:student_house/core/utils/app_them.dart';
import 'package:student_house/features/get_started/presentation/views/get_started_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter structure',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system, // ✅ يبدل تلقائي حسب النظام (Light/Dark)
      home: GetStartedView(),
    );
  }
}
