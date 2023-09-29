import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCE9769),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/background.png',
              fit: BoxFit.cover, 
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: const Color(0xFFaede71),
          color: const Color(0xffd5f191),
          animationDuration: const Duration(milliseconds: 300),
          onTap: (index) {
            print(index);
          },
          items: const [
            Icon(
              Icons.map_rounded,
              color: Colors.white,
            ),
            Icon(
              Icons.camera_alt_rounded,
              color: Colors.white,
            )
          ]),
    );
  }
}
