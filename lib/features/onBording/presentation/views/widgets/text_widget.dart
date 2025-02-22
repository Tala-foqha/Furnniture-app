// features/onBording/presentation/views/widgets/text_widget.dart


import 'package:flutter/material.dart';

class TextWidgets extends StatelessWidget {
  const TextWidgets({
    super.key,
   required this.Text1, required this.style,
  });

  final String Text1;
  final TextStyle style;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text(Text1,
      style: style,
      textAlign: TextAlign.center,),
    );


  }
}