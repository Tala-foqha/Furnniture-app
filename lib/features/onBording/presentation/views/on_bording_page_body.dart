// features/onBording/presentation/views/on_bording_page_body.dart
import 'package:flutter/material.dart';


import 'package:furniture_app/features/onBording/presentation/views/widgets/button_next_and_back.dart';
import 'package:furniture_app/features/onBording/presentation/views/widgets/dots_indicator.dart';
import 'package:furniture_app/features/onBording/presentation/views/widgets/on_bording_page_view.dart';

class OnBordingPageBody extends StatefulWidget {
  const OnBordingPageBody({super.key});

  @override
  State<OnBordingPageBody> createState() => _OnBordingPageBodyState();
}



class _OnBordingPageBodyState extends State<OnBordingPageBody> {


  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnBordingPageView (pageController: _pageController,),
              DotsIndicator(currentPage:currentPage,),

              SizedBox(height: 32,),
             
                 ButtonNextAndBack(
                    currentPage: currentPage,
                    pageController: _pageController
                    ,)
                ],
              );
              
    

  }
}