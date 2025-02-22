// core/controller/controller_navbar.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerNavbar extends GetxController {
  late PageController pageController;

RxInt currentPage=0.obs;

void goToTap(int page){
  currentPage.value=page;
  pageController.jumpToPage(page);

}
  @override
  void onInit(){
    pageController=PageController(initialPage: 0);
    super.onInit();

  }
  void onClose(){
    super.onClose();
    pageController.dispose();
  }

}