// features/splash/presentesion/views/widgets/splash_view_body.dart


import 'package:flutter/material.dart';

import 'package:furniture_app/features/onBording/presentation/views/on_bording_screen.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>with SingleTickerProviderStateMixin {
  late AnimationController animation;
  late Animation<Offset>slidertransion;
  late Animation<double>logo;
  @override
  void initState(){
    super.initState();
  animation=AnimationController(vsync: this,duration: Duration(seconds: 3));
  //slidertransion=Tween<Offset>(begin: Offset(0, 5),end: Offset(0, 0));
 logo= Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: animation,
        curve: Curves.easeInOut,
      ),
    );

  animation.forward();
  Future.delayed(Duration(seconds: 3),
  (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBordingScreen()));
  }
  );
  }
  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
          animation: logo,
          builder: (context,child){
            return Transform.scale(
              scale: logo.value,
              child: child,

            );
          },
          child: Image.asset('assets/images/Group 10783.png')),
        
      //   SizedBox(height: 2.h),
      //  Align(
      //   alignment: Alignment.bottomCenter,
      //    child: Text(
      //         'FURNITURE',
      //         textAlign: TextAlign.center,
      //       ),
      //  ),
        
      ],
    );
  }
}