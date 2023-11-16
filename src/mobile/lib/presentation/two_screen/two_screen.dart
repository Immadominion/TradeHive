import 'controller/two_controller.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/widgets/app_bar/appbar_leading_image.dart';
import 'package:tradehive/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:tradehive/widgets/app_bar/custom_app_bar.dart';
import 'package:tradehive/widgets/custom_elevated_button.dart';
import 'package:tradehive/widgets/custom_outlined_button.dart';
import 'package:tradehive/widgets/custom_text_form_field.dart';

class TwoScreen extends GetWidget<TwoController> {
  const TwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: 375.h,
                child: Column(children: [
                  _buildNavbar(),
                  SizedBox(height: 49.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 5.v),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("lbl_email".tr,
                                        style: theme.textTheme.bodyLarge)),
                                SizedBox(height: 5.v),
                                _buildEmailEditText(),
                                SizedBox(height: 24.v),
                                _buildContinueButton(),
                                SizedBox(height: 42.v),
                                _buildDividerORStack(),
                                SizedBox(height: 42.v),
                                _buildContinueWithAppleButton(),
                                SizedBox(height: 12.v),
                                _buildContinueWithGoogleButton(),
                                SizedBox(height: 12.v),
                                _buildContinueWithFacebookButton()
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildNavbar() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 9.v),
        decoration: AppDecoration.fillGrayEf,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 1.v),
          CustomAppBar(
              height: 21.v,
              leadingWidth: 36.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgClose,
                  margin: EdgeInsets.only(left: 16.h, bottom: 1.v),
                  onTap: () {
                    onTapClose();
                  }),
              centerTitle: true,
              title: AppbarSubtitleOne(text: "msg_log_in_or_sign_up".tr))
        ]));
  }

  /// Section Widget
  Widget _buildEmailEditText() {
    return CustomTextFormField(
        controller: controller.emailEditTextController,
        hintText: "msg_prizigner_gmail_com".tr,
        hintStyle: theme.textTheme.bodyLarge!,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v));
  }

  /// Section Widget
  Widget _buildContinueButton() {
    return CustomElevatedButton(text: "lbl_continue".tr);
  }

  /// Section Widget
  Widget _buildOrButton() {
    return CustomElevatedButton(
        height: 26.v,
        width: 47.h,
        text: "lbl_or".tr.toUpperCase(),
        buttonStyle: CustomButtonStyles.fillOnErrorContainerTL13,
        buttonTextStyle: CustomTextStyles.labelLargeInterBluegray500,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildDividerORStack() {
    return SizedBox(
        height: 26.v,
        width: 343.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 12.v),
                  child: SizedBox(
                      width: 343.h,
                      child: Divider(color: appTheme.indigo5001)))),
          _buildOrButton()
        ]));
  }

  /// Section Widget
  Widget _buildContinueWithAppleButton() {
    return CustomOutlinedButton(
        text: "msg_continue_with_apple".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconPrimarycontainer,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineOnErrorContainer);
  }

  /// Section Widget
  Widget _buildContinueWithGoogleButton() {
    return CustomOutlinedButton(
        text: "msg_continue_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconRed500,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineOnErrorContainer);
  }

  /// Section Widget
  Widget _buildContinueWithFacebookButton() {
    return CustomOutlinedButton(
        text: "msg_continue_with_facebook".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineOnErrorContainer);
  }

  /// Navigates to the previous screen.
  onTapClose() {
    Get.back();
  }
}
