import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _OnboardingScreen();
  }
}

class _OnboardingScreen extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 16,
        children: [
          SizedBox(
            width: 200,
            height: 40,
            child: TextButton(
                onPressed: () { },
                style: TextButton.styleFrom(
                    backgroundColor: const Color(0xffF18265),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 2,
                    padding: const EdgeInsets.all(16)
                ),
                child: const Text(
                  "Create Account",
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                )
            ),
          ),
          SizedBox(
            width: 200,
            height: 40,
            child: TextButton(
                onPressed: () { },
                style: TextButton.styleFrom(
                    backgroundColor: const Color(0xffF18265),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 2,
                    padding: const EdgeInsets.all(16)
                ),
                child: const Text(
                  "Log in",
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}