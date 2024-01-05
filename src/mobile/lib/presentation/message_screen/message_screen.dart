import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/message_controller.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/widgets/app_bar/appbar_leading_image.dart';
import 'package:tradehive/widgets/app_bar/appbar_title_image.dart';
import 'package:tradehive/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tradehive/widgets/app_bar/custom_app_bar.dart';
import 'package:tradehive/widgets/custom_elevated_button.dart';
import 'package:tradehive/widgets/custom_icon_button.dart';
import 'package:tradehive/widgets/custom_text_form_field.dart';

class MessageScreen extends GetWidget<MessageController> {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildSixteen(),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.h, vertical: 24.sp),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_sep_5_6_51_am".tr,
                                    style:
                                        CustomTextStyles.bodySmallBlack90012)),
                            SizedBox(height: 14.sp),
                            Container(
                                margin: EdgeInsets.only(right: 137.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.h, vertical: 5.sp),
                                decoration: AppDecoration.fillIndigo.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 4.sp),
                                      SizedBox(
                                          width: 160.h,
                                          child: Text("msg_hello_i_ll_like".tr,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodyLargeBlack900
                                                  .copyWith(height: 1.50)))
                                    ])),
                            SizedBox(height: 9.sp),
                            CustomElevatedButton(
                                height: 40.sp,
                                width: 201.h,
                                text: "msg_yes_it_is_still".tr,
                                margin: EdgeInsets.only(right: 1.h),
                                buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                                buttonTextStyle:
                                    CustomTextStyles.bodyLargeWhiteA700,
                                alignment: Alignment.centerRight),
                            SizedBox(height: 9.sp),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    margin: EdgeInsets.only(
                                        left: 134.h, right: 1.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 21.h, vertical: 8.sp),
                                    decoration: AppDecoration.fillPrimary
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 3.sp),
                                          Text("msg_how_many_pieces".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeWhiteA700)
                                        ]))),
                            SizedBox(height: 24.sp),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_sep_5_6_51_am".tr,
                                    style:
                                        CustomTextStyles.bodySmallBlack90012)),
                            SizedBox(height: 14.sp),
                            CustomElevatedButton(
                                height: 40.sp,
                                width: 184.h,
                                text: "msg_just_fourteen_pieces".tr,
                                buttonStyle: CustomButtonStyles.fillIndigo,
                                buttonTextStyle:
                                    CustomTextStyles.bodyLargeBlack900),
                            SizedBox(
                              height: 5.sp,
                            ),
                          ]))
                ])),
            bottomNavigationBar: _buildMessage()));
  }

  /// Section Widget
  Widget _buildSixteen() {
    return Container(
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 17.sp),
          CustomAppBar(
              height: 42.sp,
              leadingWidth: 40.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin:
                      EdgeInsets.only(left: 19.h, top: 10.sp, bottom: 10.sp),
                  onTap: () {
                    onTapArrowLeft();
                  }),
              title: AppbarTitleImage(
                  imagePath: ImageConstant.imgProfile26x26,
                  margin: EdgeInsets.only(left: 9.h)),
              actions: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgCallErrorcontainer,
                    margin:
                        EdgeInsets.only(left: 20.h, top: 13.sp, right: 14.h)),
                AppbarTrailingImage(
                  imagePath: ImageConstant.imgGroup6065,
                  margin: EdgeInsets.fromLTRB(
                    11.h,
                    18.sp,
                    34.h,
                    4.sp,
                  ),
                )
              ])
        ]));
  }

  /// Section Widget
  Widget _buildMessage() {
    return Padding(
        padding: EdgeInsets.only(left: 21.h, right: 21.h, bottom: 30.sp),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomIconButton(
              height: 50.sp,
              width: 50.sp,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillGray,
              child: CustomImageView(imagePath: ImageConstant.imgCamera)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: CustomTextFormField(
                      controller: controller.messageController,
                      hintText: "lbl_message".tr,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 13.sp, 10.h, 13.sp),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgVuesaxOutlineMicrophone2,
                          height: 24.sp,
                          width: 24.sp,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(maxHeight: 50.sp),
                      contentPadding: EdgeInsets.only(
                          left: 15.h, top: 16.sp, bottom: 16.sp),
                      borderDecoration: TextFormFieldStyleHelper.fillGrayTL12,
                      filled: true,
                      fillColor: appTheme.gray10001)))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
