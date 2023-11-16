import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/notifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/widgets/app_bar/appbar_leading_image.dart';
import 'package:tradehive/widgets/app_bar/appbar_subtitle.dart';
import 'package:tradehive/widgets/app_bar/custom_app_bar.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildTwenty(),
                  Container(
                      height: 932.v,
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 27.v),
                      child: Stack(alignment: Alignment.topCenter, children: [
                        SizedBox(
                            width: double.maxFinite,
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 19.h, right: 25.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          _buildNotifications(),
                                          SizedBox(height: 21.v),
                                          _buildFortyNine(),
                                          SizedBox(height: 43.v),
                                          _buildFifty(),
                                          SizedBox(height: 43.v),
                                          _buildFiftyOne()
                                        ])))),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding: EdgeInsets.only(top: 71.v),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Divider(),
                                      SizedBox(height: 87.v),
                                      Divider(),
                                      SizedBox(height: 103.v),
                                      Divider(),
                                      SizedBox(height: 114.v),
                                      Divider(),
                                      SizedBox(height: 95.v),
                                      Divider(),
                                      SizedBox(height: 111.v),
                                      Divider(),
                                      SizedBox(height: 73.v),
                                      Divider()
                                    ])))
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildTwenty() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 9.v),
          CustomAppBar(
              leadingWidth: 40.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 19.h, top: 2.v),
                  onTap: () {
                    onTapArrowLeft();
                  }),
              title: AppbarSubtitle(
                  text: "lbl_notifications".tr,
                  margin: EdgeInsets.only(left: 16.h)))
        ]));
  }

  /// Section Widget
  Widget _buildNotifications() {
    return Expanded(
        child: Obx(() => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.0.v),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: appTheme.gray100)));
            },
            itemCount: controller
                .notificationsModelObj.value.notificationsItemList.value.length,
            itemBuilder: (context, index) {
              NotificationsItemModel model = controller.notificationsModelObj
                  .value.notificationsItemList.value[index];
              return NotificationsItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildFortyNine() {
    return SizedBox(
        height: 69.v,
        width: 314.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          Padding(
              padding: EdgeInsets.only(top: 9.v, bottom: 36.v),
              child: _buildFiftyTwo()),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 19.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 258.h,
                            child: Text("msg_a_suspicious_login".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMediumBlack900)),
                        SizedBox(height: 5.v),
                        Text("lbl_2_hours_ago".tr,
                            style: CustomTextStyles.bodySmallInter)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildFifty() {
    return SizedBox(
        height: 69.v,
        width: 314.h,
        child: Stack(alignment: Alignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 9.v, bottom: 36.v),
              child: _buildFiftyTwo()),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(left: 36.h, right: 20.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 257.h,
                            child: Text("msg_your_comment_on".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMediumBlack900)),
                        SizedBox(height: 5.v),
                        Text("lbl_2_hours_ago".tr,
                            style: CustomTextStyles.bodySmallInter)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildFiftyOne() {
    return SizedBox(
        height: 52.v,
        width: 314.h,
        child: Stack(alignment: Alignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v, bottom: 27.v),
              child: _buildFiftyTwo()),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(left: 36.h, right: 27.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 250.h,
                            child: Text("msg_we_d_like_your_feedback".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMediumBlack900)),
                        SizedBox(height: 2.v),
                        Text("lbl_2_hours_ago".tr,
                            style: CustomTextStyles.bodySmallInter)
                      ])))
        ]));
  }

  /// Common widget
  Widget _buildFiftyTwo() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomImageView(
          imagePath: ImageConstant.imgRefresh,
          height: 24.adaptSize,
          width: 24.adaptSize),
      CustomImageView(
          imagePath: ImageConstant.imgGroup6065Errorcontainer,
          height: 15.v,
          width: 3.h,
          margin: EdgeInsets.only(top: 6.v, bottom: 3.v))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
