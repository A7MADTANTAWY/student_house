import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: Center(
        child: Text(
          "Favorite View",
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
