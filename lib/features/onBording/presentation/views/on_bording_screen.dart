// features/onBording/presentation/views/on_bording_screen.dart
import 'package:flutter/material.dart';
import 'package:furniture_app/features/onBording/presentation/views/on_bording_page_body.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});
static const String routeName = 'on-boarding-screen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: OnBordingPageBody(),
    );
  }
}