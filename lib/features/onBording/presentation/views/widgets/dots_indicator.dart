// features/onBording/presentation/views/widgets/dots_indicator.dart
import 'package:flutter/material.dart';
import 'package:furniture_app/features/onBording/presentation/views/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPage});
final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
children: 
     List.generate(
      3, (index){
return Padding(
  padding:  EdgeInsets.only(right: 8),
  child: CustomDotIndicator(
    isActive:index==currentPage
  ),
);
    })
    );
  }
}