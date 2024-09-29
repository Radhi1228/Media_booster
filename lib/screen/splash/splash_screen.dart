import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, "home"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.music_note,
                  size: 100,
                  color: Colors.green,
                )),
            const SizedBox(
              height: 10,
            ),
            const Text("AudioBeats",
                style: TextStyle(fontSize: 30, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
