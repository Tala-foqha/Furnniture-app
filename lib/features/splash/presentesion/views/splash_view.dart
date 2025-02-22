// features/splash/presentesion/views/splash_view.dart
import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/app_color.dart';
import 'package:furniture_app/features/splash/presentesion/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
static const  String routeName='splash_view';
  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
        backgroundColor: AppColor.Browny,
        body:SplashViewBody() ,
      
      
    );
  }
}

