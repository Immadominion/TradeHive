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
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  _buildThirtyEight(),
                  SizedBox(height: 13.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 42.v),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        height: 587.v,
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
                                                                height: 43.v),
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
                                                                height: 7.v),
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
                                                                height: 3.v),
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
                                                                height: 40.v),
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
                                                                height: 9.v),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 1
                                                                            .h),
                                                                child: Row(
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgProfile,
                                                                          height: 32
                                                                              .adaptSize,
                                                                          width: 32
                                                                              .adaptSize,
                                                                          margin:
                                                                              EdgeInsets.only(bottom: 4.v)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 8
                                                                                  .h),
                                                                          child: Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text("lbl_adejoh_moses".tr, style: theme.textTheme.titleMedium),
                                                                                SizedBox(height: 1.v),
                                                                                Text("msg_obafemi_awolowo".tr, style: theme.textTheme.labelLarge)
                                                                              ]))
                                                                    ])),
                                                            SizedBox(
                                                                height: 4.v),
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
                                                                height: 5.v),
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
                                                                              .adaptSize,
                                                                          width: 12
                                                                              .adaptSize,
                                                                          margin:
                                                                              EdgeInsets.only(left: 8.h)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 2
                                                                                  .h,
                                                                              top: 2
                                                                                  .v),
                                                                          child: Text(
                                                                              "lbl_20".tr,
                                                                              style: theme.textTheme.labelSmall))
                                                                    ])),
                                                            SizedBox(
                                                                height: 8.v),
                                                            _buildGiveAReview(),
                                                            SizedBox(
                                                                height: 18.v),
                                                            Text(
                                                                "msg_view_more_reviews"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .bodySmallInter12)
                                                          ]))),
                                              _buildLineTen()
                                            ])),
                                    SizedBox(height: 20.v),
                                    Divider(),
                                    SizedBox(height: 22.v),
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
                                    SizedBox(height: 2.v)
                                  ]))))
                ])),
            floatingActionButton: _buildFloatingActionButton()));
  }

  /// Section Widget
  Widget _buildThirtyEight() {
    return SizedBox(
        height: 267.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgUnsplashOb2aeee8s4a267x360,
              height: 267.v,
              width: 360.h,
              radius: BorderRadius.vertical(bottom: Radius.circular(10.h)),
              alignment: Alignment.center),
          CustomAppBar(
              height: 51.v,
              leadingWidth: 48.h,
              leading: AppbarLeadingIconbutton(
                  imagePath: ImageConstant.imgGroup6074,
                  margin: EdgeInsets.only(left: 16.h, bottom: 4.v),
                  onTap: () {
                    onTapIconButton();
                  }),
              actions: [
                AppbarTrailingIconbuttonOne(
                    imagePath: ImageConstant.imgGroup37,
                    margin: EdgeInsets.only(left: 23.h, top: 3.v, right: 23.h))
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
                height: 52.adaptSize,
                width: 52.adaptSize,
                radius: BorderRadius.circular(26.h),
                margin: EdgeInsets.only(bottom: 1.v)),
            Padding(
                padding: EdgeInsets.only(left: 9.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_ayomide_shuaib".tr,
                          style: CustomTextStyles.titleMediumInter_1),
                      Text("msg_obafemi_awolowo".tr,
                          style: CustomTextStyles.labelLargeInter_1),
                      SizedBox(height: 2.v),
                      Text("lbl_4_5".tr,
                          style: CustomTextStyles.labelLargeInter_1)
                    ]))
          ])),
          Container(
              height: 25.adaptSize,
              width: 25.adaptSize,
              margin: EdgeInsets.only(left: 69.h, top: 14.v, bottom: 14.v),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlus,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
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
            padding: EdgeInsets.symmetric(vertical: 3.v),
            onChange: (value) {
              controller.giveAReview.value = value;
            })));
  }

  /// Section Widget
  Widget _buildLineTen() {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(top: 77.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Divider(), SizedBox(height: 282.v), Divider()])));
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
        height: 53,
        width: 53,
        backgroundColor: appTheme.indigo50,
        child: CustomImageView(
            imagePath: ImageConstant.imgCall, height: 26.5.v, width: 26.5.h));
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
