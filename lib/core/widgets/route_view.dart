import 'package:flutter/material.dart';
import 'package:student_house/core/utils/colors.dart';
import 'package:student_house/features/favorite/presentation/views/favorite_view.dart';
import 'package:student_house/features/settings/presentation/views/settings_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/interface/student_profile/presentation/views/profile_view.dart';

class RouteView extends StatefulWidget {
  const RouteView({super.key});

  @override
  State<RouteView> createState() => _RouteViewState();
}

class _RouteViewState extends State<RouteView> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeView(),
    ProfileView(),
    SettingsView(),
    FavoriteView(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // ✅ تمنع الحركة
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        elevation: 0,
        selectedItemColor: kLightPrimaryColor,
        unselectedItemColor: kUnSelectedIcon,
        selectedFontSize: 12,
        unselectedFontSize: 10,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 24),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 24),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 24),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, size: 24),
            label: "Favorites",
          ),
        ],
      ),
    );
  }
}
