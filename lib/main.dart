// main.dart
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/utils/app_router.dart';
import 'package:furniture_app/features/home/presentation/view/home_screen.dart';
import 'package:furniture_app/features/home/presentation/view/widgets/home_screen_body.dart';
import 'package:furniture_app/features/splash/presentesion/views/splash_view.dart';
import 'package:furniture_app/firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized(); // ✅ حل المشكلة
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
       minTextAdapt: true,
      child: MaterialApp(
       onGenerateRoute: AppRouter.generateRoute, 
    initialRoute:SplashView.routeName ,
       debugShowCheckedModeBanner: false,
       
      // home: SplashView(),
      ),
    );
  }
}
