import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          "Settings View",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: Colors.white, // لون يبان فوق الخلفية الصفراء
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
