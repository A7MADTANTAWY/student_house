import 'package:flutter/material.dart';
import 'package:student_house/core/widgets/route_view.dart';
import 'package:student_house/features/get_started/presentation/views/FirstScreen.dart';
import 'package:student_house/features/get_started/presentation/views/SecondScreen.dart';
import 'package:student_house/features/get_started/presentation/views/ThirdScreen.dart';
import 'package:student_house/features/get_started/presentation/views/widgets/CustomIndicator.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _controller = PageController();
  int index = 0;

  void _navigateToMainScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const RouteView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
                children: const [FirstScreen(), SecondScreen(), ThirdScreen()],
              ),
            ),

            // ✅ Row (Back, Indicators, Next)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (index > 0)
                    OutlinedButton(
                      onPressed: () {
                        _controller.previousPage(
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.linear,
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: theme.primaryColor, width: 2),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(15),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: theme.primaryColor,
                        size: 25,
                      ),
                    )
                  else
                    const SizedBox(width: 60),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (i) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: CustomIndicator(active: index == i),
                      ),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      if (index == 2) {
                        _navigateToMainScreen();
                      } else {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.linear,
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.primaryColor,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(15),
                    ),
                    child: Icon(
                      index == 2 ? Icons.check : Icons.arrow_forward,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),

            // ✅ زر Skip تحت الـ Row
            Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: _navigateToMainScreen,
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: theme.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
