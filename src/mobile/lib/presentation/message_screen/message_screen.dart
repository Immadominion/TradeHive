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
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildSixteen(),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.h, vertical: 24.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_sep_5_6_51_am".tr,
                                    style:
                                        CustomTextStyles.bodySmallBlack90012)),
                            SizedBox(height: 14.v),
                            Container(
                                margin: EdgeInsets.only(right: 137.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.h, vertical: 5.v),
                                decoration: AppDecoration.fillIndigo.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 4.v),
                                      SizedBox(
                                          width: 160.h,
                                          child: Text("msg_hello_i_ll_like".tr,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodyLargeBlack900
                                                  .copyWith(height: 1.50)))
                                    ])),
                            SizedBox(height: 9.v),
                            CustomElevatedButton(
                                height: 40.v,
                                width: 201.h,
                                text: "msg_yes_it_is_still".tr,
                                margin: EdgeInsets.only(right: 1.h),
                                buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                                buttonTextStyle:
                                    CustomTextStyles.bodyLargeWhiteA700,
                                alignment: Alignment.centerRight),
                            SizedBox(height: 9.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    margin: EdgeInsets.only(
                                        left: 134.h, right: 1.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 21.h, vertical: 8.v),
                                    decoration: AppDecoration.fillPrimary
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 3.v),
                                          Text("msg_how_many_pieces".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeWhiteA700)
                                        ]))),
                            SizedBox(height: 24.v),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_sep_5_6_51_am".tr,
                                    style:
                                        CustomTextStyles.bodySmallBlack90012)),
                            SizedBox(height: 14.v),
                            CustomElevatedButton(
                                height: 40.v,
                                width: 184.h,
                                text: "msg_just_fourteen_pieces".tr,
                                buttonStyle: CustomButtonStyles.fillIndigo,
                                buttonTextStyle:
                                    CustomTextStyles.bodyLargeBlack900),
                            SizedBox(height: 5.v)
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
          SizedBox(height: 17.v),
          CustomAppBar(
              height: 42.v,
              leadingWidth: 40.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 19.h, top: 10.v, bottom: 10.v),
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
                        EdgeInsets.only(left: 20.h, top: 13.v, right: 14.h)),
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgGroup6065,
                    margin: EdgeInsets.fromLTRB(11.h, 18.v, 34.h, 4.v))
              ])
        ]));
  }

  /// Section Widget
  Widget _buildMessage() {
    return Padding(
        padding: EdgeInsets.only(left: 21.h, right: 21.h, bottom: 30.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
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
                          margin: EdgeInsets.fromLTRB(30.h, 13.v, 10.h, 13.v),
                          child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgVuesaxOutlineMicrophone2,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      suffixConstraints: BoxConstraints(maxHeight: 50.v),
                      contentPadding:
                          EdgeInsets.only(left: 15.h, top: 16.v, bottom: 16.v),
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
