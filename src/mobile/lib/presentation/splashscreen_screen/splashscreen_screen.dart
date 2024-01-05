import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/splashscreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';

class SplashscreenScreen extends GetWidget<SplashscreenController> {
  const SplashscreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 127.h, vertical: 306.sp),
            decoration: AppDecoration.fillPrimary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 44.sp),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup67WhiteA700,
                  height: 99.sp,
                  width: 105.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
