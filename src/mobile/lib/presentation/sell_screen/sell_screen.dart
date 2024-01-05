import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/sell_controller.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/core/utils/validation_functions.dart';
import 'package:tradehive/widgets/app_bar/appbar_leading_image.dart';
import 'package:tradehive/widgets/app_bar/appbar_subtitle.dart';
import 'package:tradehive/widgets/app_bar/custom_app_bar.dart';
import 'package:tradehive/widgets/custom_checkbox_button.dart';
import 'package:tradehive/widgets/custom_elevated_button.dart';
import 'package:tradehive/widgets/custom_outlined_button.dart';
import 'package:tradehive/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SellScreen extends GetWidget<SellController> {
  SellScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      _buildTwentyOne(),
                      SizedBox(height: 23.sp),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.h, right: 20.h, bottom: 5.sp),
                                  child: Column(children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("lbl_category".tr,
                                            style: theme.textTheme.titleSmall)),
                                    SizedBox(height: 7.sp),
                                    _buildTextbooksButton(),
                                    SizedBox(height: 25.sp),
                                    _buildTitleEditText(),
                                    SizedBox(height: 7.sp),
                                    _buildPleaseProvideA(
                                        userInputText:
                                            "msg_please_write_a_clear".tr,
                                        userInputLabel: "lbl_0_60".tr),
                                    SizedBox(height: 23.sp),
                                    _buildDescriptionEditText(),
                                    SizedBox(height: 8.sp),
                                    _buildPleaseProvideA(
                                        userInputText:
                                            "msg_please_provide_a".tr,
                                        userInputLabel: "lbl_0_60".tr),
                                    SizedBox(height: 24.sp),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("lbl_institution".tr,
                                            style: theme.textTheme.titleSmall)),
                                    SizedBox(height: 8.sp),
                                    _buildPlayEditText(),
                                    SizedBox(height: 25.sp),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("lbl_condition".tr,
                                            style: theme.textTheme.titleSmall)),
                                    SizedBox(height: 8.sp),
                                    _buildConditionEditText(),
                                    SizedBox(height: 26.sp),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                            "msg_add_at_least_1_photo".tr,
                                            style: CustomTextStyles
                                                .labelLargeInter_1)),
                                    SizedBox(height: 7.sp),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            height: 69.sp,
                                            width: 73.h,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 26.h,
                                                vertical: 23.sp),
                                            decoration: AppDecoration
                                                .fillGray100
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder5),
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgPlusPrimary,
                                                height: 19.sp,
                                                width: 19.sp,
                                                alignment:
                                                    Alignment.bottomCenter))),
                                    SizedBox(height: 7.sp),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: 272.h,
                                            margin:
                                                EdgeInsets.only(right: 47.h),
                                            child: Text(
                                                "msg_upload_high_quality".tr,
                                                maxLines: 4,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .bodySmallInter
                                                    .copyWith(height: 1.50)))),
                                    SizedBox(height: 24.sp),
                                    _buildPlayEditText1(),
                                    SizedBox(height: 7.sp),
                                    _buildPleaseProvideA(
                                        userInputText:
                                            "msg_choose_the_preferred".tr,
                                        userInputLabel: "lbl_0_60".tr),
                                    SizedBox(height: 23.sp),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("msg_custom_attributes".tr,
                                            style: theme.textTheme.titleSmall)),
                                    SizedBox(height: 8.sp),
                                    _buildPlayEditText2(),
                                    SizedBox(height: 26.sp),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                            "msg_pricing_and_payments".tr,
                                            style: theme.textTheme.titleSmall)),
                                    SizedBox(height: 7.sp),
                                    _buildLanguageEditText(),
                                    SizedBox(height: 7.sp),
                                    _buildNegotiableCheckBox(),
                                    SizedBox(height: 116.sp),
                                    _buildPublishButton()
                                  ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildTwentyOne() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 14.sp),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 5.sp),
          CustomAppBar(
              leadingWidth: 35.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgCloseErrorcontainer20x20,
                  margin: EdgeInsets.only(left: 23.h, top: 4.sp, bottom: 7.sp),
                  onTap: () {
                    onTapClose();
                  }),
              title: AppbarSubtitle(
                  text: "msg_provide_listing".tr,
                  margin: EdgeInsets.only(left: 17.h)))
        ]));
  }

  /// Section Widget
  Widget _buildTextbooksButton() {
    return CustomOutlinedButton(
        height: 40.sp,
        text: "lbl_textbooks".tr,
        rightIcon: Container(
            margin: EdgeInsets.only(left: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgPlay, height: 15.sp, width: 10.h)),
        buttonTextStyle: theme.textTheme.bodyMedium!);
  }

  /// Section Widget
  Widget _buildTitleEditText() {
    return CustomTextFormField(
      controller: controller.titleEditTextController,
      hintText: "lbl_title".tr,
      hintStyle: theme.textTheme.bodyMedium!,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.sp,
      ),
    );
  }

  /// Section Widget
  Widget _buildDescriptionEditText() {
    return CustomTextFormField(
      controller: controller.descriptionEditTextController,
      hintText: "lbl_description2".tr,
      hintStyle: theme.textTheme.bodyMedium!,
      maxLines: 3,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.sp,
      ),
    );
  }

  /// Section Widget
  Widget _buildPlayEditText() {
    return CustomTextFormField(
      controller: controller.playEditTextController,
      hintText: "msg_obafemi_awolowo".tr,
      hintStyle: theme.textTheme.bodyMedium!,
      suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 12.sp, 23.h, 12.sp),
          child: CustomImageView(
              imagePath: ImageConstant.imgPlay, height: 15.sp, width: 10.h)),
      suffixConstraints: BoxConstraints(
        maxHeight: 40.sp,
      ),
    );
  }

  /// Section Widget
  Widget _buildConditionEditText() {
    return CustomTextFormField(
      controller: controller.conditionEditTextController,
      hintText: "lbl_brand_new".tr,
      hintStyle: theme.textTheme.bodyMedium!,
      suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 12.sp, 23.h, 12.sp),
          child: CustomImageView(
              imagePath: ImageConstant.imgPlay, height: 15.sp, width: 10.h)),
      suffixConstraints: BoxConstraints(
        maxHeight: 40.sp,
      ),
    );
  }

  /// Section Widget
  Widget _buildPlayEditText1() {
    return CustomTextFormField(
      controller: controller.playEditTextController1,
      hintText: "lbl_local_pickup".tr,
      hintStyle: theme.textTheme.bodyMedium!,
      suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 12.sp, 23.h, 12.sp),
          child: CustomImageView(
              imagePath: ImageConstant.imgPlay, height: 15.sp, width: 10.h)),
      suffixConstraints: BoxConstraints(
        maxHeight: 40.sp,
      ),
    );
  }

  /// Section Widget
  Widget _buildPlayEditText2() {
    return CustomTextFormField(
        controller: controller.playEditTextController2,
        hintText: "lbl_isbn_number".tr,
        hintStyle: theme.textTheme.bodyMedium!,
        textInputType: TextInputType.number,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.sp, 23.h, 12.sp),
            child: CustomImageView(
                imagePath: ImageConstant.imgPlay, height: 15.sp, width: 10.h)),
        suffixConstraints: BoxConstraints(maxHeight: 40.sp),
        validator: (value) {
          if (!isNumeric(value)) {
            return "err_msg_please_enter_valid_number".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildLanguageEditText() {
    return CustomTextFormField(
      controller: controller.languageEditTextController,
      hintText: "lbl2".tr,
      hintStyle: theme.textTheme.bodyMedium!,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.sp,
      ),
    );
  }

  /// Section Widget
  Widget _buildNegotiableCheckBox() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Obx(() => CustomCheckboxButton(
            alignment: Alignment.centerLeft,
            text: "lbl_negotiable".tr,
            value: controller.negotiableCheckBox.value,
            textStyle: CustomTextStyles.bodySmallInterGray900,
            onChange: (value) {
              controller.negotiableCheckBox.value = value;
            })));
  }

  /// Section Widget
  Widget _buildPublishButton() {
    return CustomElevatedButton(
        text: "lbl_publish".tr,
        buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
        onPressed: () {
          onTapPublishButton();
        });
  }

  /// Common widget
  Widget _buildPleaseProvideA({
    required String userInputText,
    required String userInputLabel,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: SizedBox(
                  width: 228.h,
                  child: Text(userInputText,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallInter.copyWith(
                          color: appTheme.black900.withOpacity(0.85),
                          height: 1.50)))),
          Padding(
              padding: EdgeInsets.only(left: 67.h, bottom: 32.sp),
              child: Text(userInputLabel,
                  style: CustomTextStyles.bodySmallInter
                      .copyWith(color: appTheme.black900.withOpacity(0.85))))
        ]);
  }

  /// Navigates to the previous screen.
  onTapClose() {
    Get.back();
  }

  /// Navigates to the marketContainerScreen when the action is triggered.
  onTapPublishButton() {
    Get.toNamed(
      AppRoutes.marketContainerScreen,
    );
  }
}
