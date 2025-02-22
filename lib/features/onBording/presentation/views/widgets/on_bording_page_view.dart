// features/onBording/presentation/views/widgets/on_bording_page_view.dart

import 'package:flutter/material.dart';
import 'package:furniture_app/features/onBording/presentation/views/widgets/page_view_item.dart';

class OnBordingPageView extends StatelessWidget {
  const OnBordingPageView({super.key, required this.pageController, });
final PageController pageController;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 720,
      child: PageView(
        controller: pageController,
   
      children: [
    
         PageViewItem(Text1: 'Online Home Store\n and Furniture',
        Text2: 'Discover all style and budgets of furniture, appliances, kitchen, and more from 500+ brands in your hand.',
        path: 'assets/images/Mask group (1).png',
        visible: false,
        
        
        ),
      
        PageViewItem(Text1: 'Delivery Right to Your\n Doorstep', 
        Text2: 'Sit back, and enjoy the convenience of\n our drivers delivering your\n order to your doorstep.',
         path: 'assets/images/Mask group (2).png',visible: true,

    
         ),
      
         

         PageViewItem(path: 'assets/images/Mask group (3).png',
         Text1:'Get Support From Our \n Skilled Team' ,
         Text2: 'If our products don\'t meet your\n expectations, we\'re available 24/7 to\n assist you.',
    
         visible: true,),
      ],
      ),
    );
  }
}
