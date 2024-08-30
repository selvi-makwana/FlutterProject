import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:cotterncharm/Navigation_Bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class SplaceScreen extends StatefulWidget {
  const SplaceScreen({super.key});

  @override
  State<SplaceScreen> createState() => _SplaceScreenState();
}

class _SplaceScreenState extends State<SplaceScreen> {
  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.scale(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.black,
          Colors.black,
        ],
      ),
      childWidget: Padding(
        padding: const EdgeInsets.only(top: 250),
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: 200,
                child: Image.asset("assets/images/cottern_charm_logo.png"),
              ),
            ),
            const Text(
              "Cottern Charm",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      duration: const Duration(milliseconds: 1500),
      animationDuration: const Duration(milliseconds: 1000),
      onAnimationEnd: () => debugPrint("On Scale End"),
      nextScreen: const CotternCharmNavigationBar(),
    );
  }
}
