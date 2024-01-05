import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/listing_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:tradehive/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:tradehive/widgets/app_bar/custom_app_bar.dart';
import 'package:tradehive/widgets/custom_checkbox_button.dart';
import 'package:tradehive/widgets/custom_elevated_button.dart';
import 'package:tradehive/widgets/custom_floating_button.dart';

class ListingDetailsScreen extends GetWidget<ListingDetailsController> {
  const ListingDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  _buildThirtyEight(),
                  SizedBox(height: 13.sp),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 42.sp),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        height: 587.sp,
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 19.h),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            _buildUnsplashTllhnJo(),
                                                            SizedBox(
                                                                height: 43.sp),
                                                            Container(
                                                                width: 253.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            2.h,
                                                                        right: 66
                                                                            .h),
                                                                child: Text(
                                                                    "msg_new_balance_classic"
                                                                        .tr,
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: CustomTextStyles
                                                                        .titleLargeBold)),
                                                            SizedBox(
                                                                height: 7.sp),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 2
                                                                            .h),
                                                                child: Text(
                                                                    "lbl_description"
                                                                        .tr
                                                                        .toUpperCase(),
                                                                    style: CustomTextStyles
                                                                        .labelLargeInter)),
                                                            SizedBox(
                                                                height: 3.sp),
                                                            Container(
                                                                width: 320.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 2
                                                                            .h),
                                                                child: Text(
                                                                    "msg_ahlaji_musa_trade"
                                                                        .tr,
                                                                    maxLines: 8,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: CustomTextStyles
                                                                        .bodyMediumBlack900
                                                                        .copyWith(
                                                                            height:
                                                                                1.50))),
                                                            SizedBox(
                                                                height: 40.sp),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 2
                                                                            .h),
                                                                child: Text(
                                                                    "msg_feedbacks_on_seller"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .titleMediumMedium)),
                                                            SizedBox(
                                                                height: 9.sp),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 1
                                                                            .h),
                                                                child: Row(
                                                                    children: [
                                                                      CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgProfile,
                                                                        height:
                                                                            32.sp,
                                                                        width: 32
                                                                            .sp,
                                                                        margin:
                                                                            EdgeInsets.only(
                                                                          bottom:
                                                                              4.sp,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 8
                                                                                  .h),
                                                                          child: Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text("lbl_adejoh_moses".tr, style: theme.textTheme.titleMedium),
                                                                                SizedBox(height: 1.sp),
                                                                                Text("msg_obafemi_awolowo".tr, style: theme.textTheme.labelLarge)
                                                                              ]))
                                                                    ])),
                                                            SizedBox(
                                                                height: 4.sp),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Container(
                                                                    width:
                                                                        243.h,
                                                                    margin: EdgeInsets.only(
                                                                        left: 41
                                                                            .h,
                                                                        right: 37
                                                                            .h),
                                                                    child: Text(
                                                                        "msg_such_person_must"
                                                                            .tr,
                                                                        maxLines:
                                                                            3,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: CustomTextStyles
                                                                            .bodySmall12
                                                                            .copyWith(height: 1.50)))),
                                                            SizedBox(
                                                                height: 5.sp),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 41
                                                                            .h),
                                                                child: Row(
                                                                    children: [
                                                                      Text(
                                                                          "lbl_reply"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodySmall),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVuesaxOutlineLike,
                                                                          height: 12
                                                                              .sp,
                                                                          width: 12
                                                                              .sp,
                                                                          margin:
                                                                              EdgeInsets.only(left: 8.h)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 2
                                                                                  .h,
                                                                              top: 2
                                                                                  .sp),
                                                                          child: Text(
                                                                              "lbl_20".tr,
                                                                              style: theme.textTheme.labelSmall))
                                                                    ])),
                                                            SizedBox(
                                                                height: 8.sp),
                                                            _buildGiveAReview(),
                                                            SizedBox(
                                                                height: 18.sp),
                                                            Text(
                                                                "msg_view_more_reviews"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .bodySmallInter12)
                                                          ]))),
                                              _buildLineTen()
                                            ])),
                                    SizedBox(height: 20.sp),
                                    Divider(),
                                    SizedBox(height: 22.sp),
                                    CustomElevatedButton(
                                        text: "lbl_chat".tr,
                                        margin: EdgeInsets.only(
                                            left: 20.h, right: 86.h),
                                        buttonTextStyle: CustomTextStyles
                                            .titleMediumWhiteA700,
                                        onPressed: () {
                                          onTapChat();
                                        },
                                        alignment: Alignment.centerLeft),
                                    SizedBox(
                                      height: 2.sp,
                                    ),
                                  ]))))
                ])),
            floatingActionButton: _buildFloatingActionButton()));
  }

  /// Section Widget
  Widget _buildThirtyEight() {
    return SizedBox(
        height: 267.sp,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgUnsplashOb2aeee8s4a267x360,
              height: 267.sp,
              width: 360.h,
              radius: BorderRadius.vertical(bottom: Radius.circular(10.h)),
              alignment: Alignment.center),
          CustomAppBar(
              height: 51.sp,
              leadingWidth: 48.h,
              leading: AppbarLeadingIconbutton(
                  imagePath: ImageConstant.imgGroup6074,
                  margin: EdgeInsets.only(left: 16.h, bottom: 4.sp),
                  onTap: () {
                    onTapIconButton();
                  }),
              actions: [
                AppbarTrailingIconbuttonOne(
                    imagePath: ImageConstant.imgGroup37,
                    margin: EdgeInsets.only(left: 23.h, top: 3.sp, right: 23.h))
              ])
        ]));
  }

  /// Section Widget
  Widget _buildUnsplashTllhnJo() {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        decoration: AppDecoration.outlineGray90014,
        child: Row(children: [
          Expanded(
              child: Row(children: [
            CustomImageView(
              imagePath: ImageConstant.imgUnsplash3tll97hnjo52x52,
              height: 52.sp,
              width: 52.sp,
              radius: BorderRadius.circular(26.h),
              margin: EdgeInsets.only(
                bottom: 1.sp,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 9.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_ayomide_shuaib".tr,
                          style: CustomTextStyles.titleMediumInter_1),
                      Text("msg_obafemi_awolowo".tr,
                          style: CustomTextStyles.labelLargeInter_1),
                      SizedBox(height: 2.sp),
                      Text("lbl_4_5".tr,
                          style: CustomTextStyles.labelLargeInter_1)
                    ]))
          ])),
          Container(
              height: 25.sp,
              width: 25.sp,
              margin: EdgeInsets.only(left: 69.h, top: 14.sp, bottom: 14.sp),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlus,
                  height: 24.sp,
                  width: 24.sp,
                  alignment: Alignment.topLeft))
        ]));
  }

  /// Section Widget
  Widget _buildGiveAReview() {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: Obx(() => CustomCheckboxButton(
            text: "lbl_give_a_review".tr,
            value: controller.giveAReview.value,
            padding: EdgeInsets.symmetric(vertical: 3.sp),
            onChange: (value) {
              controller.giveAReview.value = value;
            })));
  }

  /// Section Widget
  Widget _buildLineTen() {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(top: 77.sp),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Divider(), SizedBox(height: 282.sp), Divider()])));
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
        height: 53,
        width: 53,
        backgroundColor: appTheme.indigo50,
        child: CustomImageView(
            imagePath: ImageConstant.imgCall, height: 26.5.sp, width: 26.5.h));
  }

  /// Navigates to the marketContainerScreen when the action is triggered.
  onTapIconButton() {
    Get.toNamed(
      AppRoutes.marketContainerScreen,
    );
  }

  /// Navigates to the messageScreen when the action is triggered.
  onTapChat() {
    Get.toNamed(
      AppRoutes.messageScreen,
    );
  }
}
