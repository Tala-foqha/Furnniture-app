// core/utils/app_router.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/core/widgets/nav_bar.dart';
import 'package:furniture_app/features/login/presentation/maneger/login/login_cubit.dart';
import 'package:furniture_app/features/login/presentation/views/log_in_screen.dart';
import 'package:furniture_app/features/onBording/presentation/views/on_bording_screen.dart';
import 'package:furniture_app/features/sign%20up/presentation/maneger/signup/signup_cubit.dart';
import 'package:furniture_app/features/sign%20up/presentation/view/register_screen.dart';
import 'package:furniture_app/features/splash/presentesion/views/splash_view.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings ){

    switch(settings.name){
      case OnBordingScreen.routeName:
      return MaterialPageRoute(builder: (context)=>OnBordingScreen());

 case SplashView.routeName:
      return MaterialPageRoute(builder: (context)=>SplashView());

     case LogInScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>LoginCubit(),
            child: const LogInScreen(),
          ),
        );

 case RegisterScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>SignupCubit(),
            child: const RegisterScreen(),
          ),
        );
        case NavBar.routeName:
      return MaterialPageRoute(builder: (context)=>NavBar());




      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );

    }
  }
}