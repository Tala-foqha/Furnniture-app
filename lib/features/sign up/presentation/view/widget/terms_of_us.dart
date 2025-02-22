// features/sign up/presentation/view/widget/terms_of_us.dart
import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/app_Style.dart';
import 'package:furniture_app/core/utils/app_color.dart';

class TermsOfUs extends StatelessWidget {
  const TermsOfUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text:
                "By clicking Create Account, you acknowledge you have read and agreed to our ",
            style: AppStyle.manrope14mordarkegrey),
        TextSpan(
            text: "Terms of Use ",
            style:AppStyle.manrope14mordarkegrey.copyWith(
              color:AppColor.Browny,
            )),
        TextSpan(
            text: "and",
             style:AppStyle.manrope14mordarkegrey),
        TextSpan(
          text: " Privacy Policy",
            style:AppStyle.manrope14mordarkegrey.copyWith(
              color:AppColor.Browny,
            )),
      ])),
    );
  }
}