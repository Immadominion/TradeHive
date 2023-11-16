import 'controller/five_controller.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/widgets/app_bar/appbar_leading_image.dart';
import 'package:tradehive/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:tradehive/widgets/app_bar/custom_app_bar.dart';
import 'package:tradehive/widgets/custom_elevated_button.dart';
import 'package:tradehive/widgets/custom_text_form_field.dart';

class FiveScreen extends GetWidget<FiveController> {
  const FiveScreen({Key? key}) : super(key: key);

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
                  SizedBox(height: 48.v),
                  Expanded(
                      child: SingleChildScrollView(child: _buildLoginForm()))
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
                  imagePath: ImageConstant.imgArrowLeftPrimarycontainer,
                  margin: EdgeInsets.only(left: 16.h, bottom: 1.v),
                  onTap: () {
                    onTapArrowLeft();
                  }),
              centerTitle: true,
              title: AppbarSubtitleOne(text: "lbl_log_in2".tr))
        ]));
  }

  /// Section Widget
  Widget _buildLoginForm() {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 5.v),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text("lbl_username".tr, style: theme.textTheme.bodyLarge)),
          SizedBox(height: 5.v),
          CustomTextFormField(
              controller: controller.userNameController,
              hintText: "lbl".tr,
              hintStyle: theme.textTheme.bodyLarge!,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v)),
          SizedBox(height: 22.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("lbl_password".tr, style: theme.textTheme.bodyLarge)),
          SizedBox(height: 5.v),
          CustomTextFormField(
              controller: controller.passwordController,
              textInputAction: TextInputAction.done,
              obscureText: true),
          SizedBox(height: 10.v),
          Align(
              alignment: Alignment.centerRight,
              child: Text("msg_forgot_password".tr,
                  style: CustomTextStyles.bodyMediumPrimary)),
          SizedBox(height: 123.v),
          CustomElevatedButton(
              text: "lbl_log_in2".tr,
              buttonStyle: CustomButtonStyles.fillOnErrorContainer,
              buttonTextStyle: CustomTextStyles.titleMediumInterBluegray100)
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
