import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../user_dashboard_page/widgets/userbadges_item_widget.dart';
import '../user_dashboard_page/widgets/userdashboard_item_widget.dart';
import 'controller/user_dashboard_controller.dart';
import 'models/user_dashboard_model.dart';
import 'models/userbadges_item_model.dart';
import 'models/userdashboard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tradehive/widgets/app_bar/custom_app_bar.dart';
import 'package:tradehive/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class UserDashboardPage extends StatelessWidget {
  UserDashboardPage({Key? key}) : super(key: key);

  UserDashboardController controller =
      Get.put(UserDashboardController(UserDashboardModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 7.sp),
                    child: Column(children: [
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: appTheme.blueGray10001,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.circleBorder48),
                          child: Container(
                              height: 96.sp,
                              width: 96.sp,
                              decoration: AppDecoration.fillBlueGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder48),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgUnsplash3tll97hnjo96x96,
                                        height: 96.sp,
                                        width: 96.sp,
                                        radius: BorderRadius.circular(48.h),
                                        alignment: Alignment.center),
                                    Padding(
                                        padding: EdgeInsets.only(right: 7.h),
                                        child: CustomIconButton(
                                            height: 20.sp,
                                            width: 20.sp,
                                            padding: EdgeInsets.all(3.h),
                                            alignment: Alignment.bottomRight,
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgInfo)))
                                  ]))),
                      SizedBox(height: 13.sp),
                      SizedBox(
                          height: 39.sp,
                          width: 189.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Text("lbl_ayomide_shuaib".tr,
                                        style:
                                            CustomTextStyles.titleLargeBold)),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text("msg_obafemi_awolowo".tr,
                                        style: CustomTextStyles
                                            .bodyMediumBlack900))
                              ])),
                      SizedBox(height: 2.sp),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 1.sp),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_60".tr,
                                          style: CustomTextStyles
                                              .labelLargeBold_1),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "lbl_followers".tr,
                                          style: CustomTextStyles.bodySmall12_1)
                                    ]),
                                    textAlign: TextAlign.left)),
                            CustomImageView(
                              imagePath: ImageConstant.imgLine10,
                              height: 10.sp,
                              width: 1.h,
                              margin: EdgeInsets.only(
                                left: 6.h,
                                bottom: 1.sp,
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_6".tr,
                                          style: CustomTextStyles
                                              .labelLargeBold_1),
                                      TextSpan(
                                          text: "lbl_followings".tr,
                                          style: CustomTextStyles.bodySmall12_1)
                                    ]),
                                    textAlign: TextAlign.left))
                          ]),
                      SizedBox(height: 49.sp),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 21.h),
                              child: Text("lbl_active_listings".tr,
                                  style: theme.textTheme.titleMedium))),
                      SizedBox(height: 9.sp),
                      _buildUserDashboard(),
                      SizedBox(height: 20.sp),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 21.h),
                              child: Text("lbl_see_all_32".tr,
                                  style: CustomTextStyles.labelLargeBold))),
                      SizedBox(height: 24.sp),
                      Divider(),
                      SizedBox(height: 20.sp),
                      SizedBox(
                          height: 726.sp,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 200.sp),
                                    child: SizedBox(
                                        width: double.maxFinite,
                                        child: Divider()))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 21.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_wishlists".tr,
                                              style: CustomTextStyles
                                                  .titleMediumInter_1),
                                          SizedBox(height: 7.sp),
                                          _buildUserWishlist(),
                                          SizedBox(height: 12.sp),
                                          Text("lbl_see_all_32".tr,
                                              style: CustomTextStyles
                                                  .labelLargeDeeppurpleA400),
                                          SizedBox(height: 45.sp),
                                          Text("lbl_reviews".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          SizedBox(height: 8.sp),
                                          Row(children: [
                                            Text("lbl_received".tr,
                                                style: CustomTextStyles
                                                    .bodySmall12),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 23.h),
                                                child: Text("lbl_given".tr,
                                                    style: CustomTextStyles
                                                        .bodySmall12))
                                          ]),
                                          SizedBox(height: 1.sp),
                                          Container(
                                              height: 2.sp,
                                              width: 49.h,
                                              decoration: BoxDecoration(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1.h))),
                                          SizedBox(height: 17.sp),
                                          _buildProfile(
                                              userName: "lbl_adejoh_moses".tr,
                                              userMessage:
                                                  "msg_obafemi_awolowo".tr),
                                          SizedBox(height: 4.sp),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  width: 243.h,
                                                  margin: EdgeInsets.only(
                                                      left: 40.h, right: 34.h),
                                                  child: Text(
                                                      "msg_such_person_must".tr,
                                                      maxLines: 3,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .bodySmall12
                                                          .copyWith(
                                                              height: 1.50)))),
                                          SizedBox(height: 5.sp),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 40.h),
                                              child: _buildTwelve(
                                                  reply: "lbl_reply".tr,
                                                  likeCount: "lbl_20".tr)),
                                          SizedBox(height: 15.sp),
                                          _buildProfile(
                                              userName: "lbl_adejoh_moses".tr,
                                              userMessage:
                                                  "msg_obafemi_awolowo".tr),
                                          SizedBox(height: 4.sp),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  width: 243.h,
                                                  margin: EdgeInsets.only(
                                                      left: 40.h, right: 34.h),
                                                  child: Text(
                                                      "msg_such_person_must".tr,
                                                      maxLines: 3,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .bodySmall12
                                                          .copyWith(
                                                              height: 1.50)))),
                                          SizedBox(height: 5.sp),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 40.h),
                                              child: _buildTwelve(
                                                  reply: "lbl_reply".tr,
                                                  likeCount: "lbl_20".tr)),
                                          SizedBox(height: 18.sp),
                                          Text("lbl_see_all_32".tr,
                                              style: CustomTextStyles
                                                  .labelLargeInterDeeppurpleA400),
                                          SizedBox(height: 45.sp),
                                          Text("lbl_badges".tr,
                                              style: CustomTextStyles
                                                  .titleMediumInter_1),
                                          SizedBox(height: 7.sp),
                                          _buildUserBadges()
                                        ])))
                          ]))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(actions: [
      AppbarTrailingImage(
          imagePath: ImageConstant.imgSettings,
          margin: EdgeInsets.symmetric(horizontal: 20.h),
          onTap: () {
            onTapSettings();
          })
    ]);
  }

  /// Section Widget
  Widget _buildUserDashboard() {
    return SizedBox(
        height: 264.sp,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 13.h);
            },
            itemCount: controller
                .userDashboardModelObj.value.userdashboardItemList.value.length,
            itemBuilder: (context, index) {
              UserdashboardItemModel model = controller.userDashboardModelObj
                  .value.userdashboardItemList.value[index];
              return UserdashboardItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildUserWishlist() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 3.sp),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashOb2aeee8s4a3,
            height: 114.sp,
            width: 128.h,
            radius: BorderRadius.circular(5.h),
            margin: EdgeInsets.only(
              left: 8.h,
              top: 4.sp,
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 4.sp),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 131.h,
                              margin: EdgeInsets.only(top: 1.sp),
                              child: Text("msg_new_balance_classic".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.titleSmallRoboto
                                      .copyWith(height: 1.50))),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgCloseErrorcontainer20x20,
                            height: 20.sp,
                            width: 20.sp,
                            margin: EdgeInsets.only(
                              left: 16.h,
                              bottom: 23.sp,
                            ),
                          )
                        ]),
                    SizedBox(height: 2.sp),
                    Text("msg_obafemi_awolowo".tr,
                        style: theme.textTheme.bodySmall),
                    SizedBox(height: 40.sp),
                    Text("lbl_7000".tr,
                        style: CustomTextStyles.labelMediumRobotoBlack900)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildUserBadges() {
    return Obx(() => Wrap(
        runSpacing: 11.sp,
        spacing: 11.h,
        children: List<Widget>.generate(
            controller.userDashboardModelObj.value.userbadgesItemList.value
                .length, (index) {
          UserbadgesItemModel model = controller
              .userDashboardModelObj.value.userbadgesItemList.value[index];
          return UserbadgesItemWidget(model);
        })));
  }

  /// Common widget
  Widget _buildProfile({
    required String userName,
    required String userMessage,
  }) {
    return Row(children: [
      CustomImageView(
        imagePath: ImageConstant.imgProfile,
        height: 32.sp,
        width: 32.sp,
        margin: EdgeInsets.only(
          bottom: 4.sp,
        ),
      ),
      Padding(
          padding: EdgeInsets.only(left: 8.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(userName,
                style: theme.textTheme.titleMedium!
                    .copyWith(color: appTheme.black900.withOpacity(0.85))),
            SizedBox(height: 1.sp),
            Text(userMessage,
                style: theme.textTheme.labelLarge!
                    .copyWith(color: appTheme.black900.withOpacity(0.85)))
          ]))
    ]);
  }

  /// Common widget
  Widget _buildTwelve({
    required String reply,
    required String likeCount,
  }) {
    return Row(children: [
      Text(reply,
          style: theme.textTheme.bodySmall!
              .copyWith(color: appTheme.black900.withOpacity(0.85))),
      CustomImageView(
          imagePath: ImageConstant.imgVuesaxOutlineLike,
          height: 12.sp,
          width: 12.sp,
          margin: EdgeInsets.only(left: 8.h)),
      Padding(
          padding: EdgeInsets.only(left: 2.h, top: 2.sp),
          child: Text(likeCount,
              style: theme.textTheme.labelSmall!
                  .copyWith(color: appTheme.black900.withOpacity(0.85))))
    ]);
  }

  /// Navigates to the userSettingsScreen when the action is triggered.
  onTapSettings() {
    Get.toNamed(
      AppRoutes.userSettingsScreen,
    );
  }
}
