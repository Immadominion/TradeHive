import 'controller/user_settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/widgets/app_bar/appbar_leading_image.dart';
import 'package:tradehive/widgets/app_bar/appbar_subtitle.dart';
import 'package:tradehive/widgets/app_bar/custom_app_bar.dart';

class UserSettingsScreen extends GetWidget<UserSettingsController> {
  const UserSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildTwentyThree(),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 32.v),
                      child: Column(children: [
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 19.h),
                            child: _buildChangePassword(
                                changePasswordText:
                                    "msg_personal_information".tr)),
                        SizedBox(height: 30.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 19.h),
                            child: _buildChangePassword(
                                changePasswordText: "lbl_change_password".tr)),
                        SizedBox(height: 28.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 19.h),
                            child: _buildChangePassword(
                                changePasswordText: "msg_privacy_settings".tr)),
                        SizedBox(height: 27.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 19.h),
                            child: _buildChangePassword(
                                changePasswordText:
                                    "msg_student_verification".tr)),
                        SizedBox(height: 30.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 19.h),
                            child: _buildChangePassword(
                                changePasswordText:
                                    "msg_manage_notifications".tr)),
                        SizedBox(height: 26.v),
                        _buildDarkMode(),
                        SizedBox(height: 24.v),
                        Divider(),
                        SizedBox(height: 19.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 19.h),
                            child: _buildChangePassword(
                                changePasswordText: "lbl_privacy_policy".tr)),
                        SizedBox(height: 27.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 19.h),
                            child: _buildChangePassword(
                                changePasswordText: "msg_terms_of_service".tr)),
                        SizedBox(height: 30.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 19.h),
                            child: _buildChangePassword(
                                changePasswordText: "lbl_help_center".tr)),
                        SizedBox(height: 27.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 19.h),
                            child: _buildChangePassword(
                                changePasswordText: "lbl_about_us".tr)),
                        SizedBox(height: 26.v),
                        Divider(),
                        SizedBox(height: 46.v),
                        GestureDetector(
                            onTap: () {
                              onTapTxtLogOut();
                            },
                            child: Text("lbl_log_out".tr,
                                style: CustomTextStyles.titleMediumInter)),
                        SizedBox(height: 5.v)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildTwentyThree() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 14.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 5.v),
          CustomAppBar(
              leadingWidth: 40.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 19.h, bottom: 2.v),
                  onTap: () {
                    onTapArrowLeft();
                  }),
              title: AppbarSubtitle(
                  text: "lbl_settings".tr, margin: EdgeInsets.only(left: 12.h)))
        ]));
  }

  /// Section Widget
  Widget _buildDarkMode() {
    return Padding(
        padding: EdgeInsets.only(left: 19.h, right: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_dark_mode".tr, style: CustomTextStyles.titleMediumMedium),
          CustomImageView(
              imagePath: ImageConstant.imgGroup6064,
              height: 12.v,
              width: 20.h,
              margin: EdgeInsets.only(top: 5.v))
        ]));
  }

  /// Common widget
  Widget _buildChangePassword({required String changePasswordText}) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(changePasswordText,
          style: CustomTextStyles.titleMediumMedium
              .copyWith(color: appTheme.black900.withOpacity(0.85))),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 18.adaptSize,
          width: 18.adaptSize)
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the hiveloginScreen when the action is triggered.
  onTapTxtLogOut() {
    Get.toNamed(
      AppRoutes.hiveloginScreen,
    );
  }
}
