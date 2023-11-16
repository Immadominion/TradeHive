import 'controller/splashscreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';

class SplashscreenScreen extends GetWidget<SplashscreenController> {
  const SplashscreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 127.h, vertical: 306.v),
                    decoration: AppDecoration.fillPrimary,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 44.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgGroup67WhiteA700,
                              height: 99.v,
                              width: 105.h)
                        ])))));
  }
}
