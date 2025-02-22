// core/utils/constants.dart

import 'package:flutter/material.dart';

bool emailValid (String email){
     return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);}


        void BuildError(BuildContext context, String message) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
     // backgroundColor: AppColor.Browny,
    ));
  }

