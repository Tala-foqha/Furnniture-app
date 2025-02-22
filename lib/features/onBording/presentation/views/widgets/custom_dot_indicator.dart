// features/onBording/presentation/views/widgets/custom_dot_indicator.dart
import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive,  });
final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 300),
      curve: Curves.easeIn,
      height:isActive?12:10,
      width: isActive?12:10,
      decoration: BoxDecoration(
        color:isActive?Color(0xff000000)
         :Color(0xff000000).withOpacity(.5) ,
      borderRadius: BorderRadius.circular(100)
      )
    );
  }
}