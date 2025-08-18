import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: Center(
        child: Text(
          "Profile View",
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
