import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "HiveWelcomeScreen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hivewelcomescreenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "HiveLogin".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hiveloginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Five".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.twoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Market - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.marketContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Listing Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.listingDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Filter One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.filterOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Message".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.messageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "User Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.userSettingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sell".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sellScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "SplashScreen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashscreenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Wishlists".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.wishlistsScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.sp),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.sp,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.sp),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.sp,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.sp),
          Divider(
            height: 1.sp,
            thickness: 1.sp,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.sp),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.sp),
            SizedBox(height: 5.sp),
            Divider(
              height: 1.sp,
              thickness: 1.sp,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
