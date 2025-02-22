// features/home/presentation/view/home_screen.dart
import 'package:flutter/material.dart';
import 'package:furniture_app/features/home/presentation/view/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
 static const String routeName='home';
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body:HomeScreenBody() ,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Row(
            children: [
              
            ],
          ),
        ),

      ),
    );
  }
}