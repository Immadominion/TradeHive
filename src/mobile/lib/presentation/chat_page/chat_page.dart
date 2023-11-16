import '../chat_page/widgets/chat_item_widget.dart';
import 'controller/chat_controller.dart';
import 'models/chat_item_model.dart';
import 'models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/widgets/app_bar/appbar_title_searchview.dart';
import 'package:tradehive/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:tradehive/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ChatPage extends StatelessWidget {
  ChatPage({Key? key}) : super(key: key);

  ChatController controller = Get.put(ChatController(ChatModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                height: 640.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 21.h),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Expanded(
                                child: SizedBox(
                                    width: double.maxFinite,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _buildChat(),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 73.h),
                                              child: Text("lbl_adejoh_moses".tr,
                                                  style: theme
                                                      .textTheme.titleMedium)),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 37.h),
                                                  child: Text("lbl_6_07_pm".tr,
                                                      style: CustomTextStyles
                                                          .bodySmall12))),
                                          SizedBox(height: 40.v),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height: 8.adaptSize,
                                                  width: 8.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      right: 22.h),
                                                  decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.h)))),
                                          SizedBox(height: 30.v),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgProfile26x26,
                                              height: 42.adaptSize,
                                              width: 42.adaptSize,
                                              margin:
                                                  EdgeInsets.only(left: 20.h)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 73.h),
                                              child: Text(
                                                  "msg_obafemi_awolowo".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          SizedBox(height: 6.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 73.h),
                                              child: Text(
                                                  "msg_thanks_for_the_patronage"
                                                      .tr,
                                                  style: CustomTextStyles
                                                      .bodySmall12))
                                        ]))),
                            SizedBox(height: 45.v),
                            _buildTwentyOne(),
                            SizedBox(height: 45.v),
                            _buildTwentyThree(),
                            SizedBox(height: 45.v),
                            _buildTwenty3(),
                            SizedBox(height: 45.v),
                            _buildTwenty5()
                          ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Divider(),
                        SizedBox(height: 97.v),
                        Divider(),
                        SizedBox(height: 97.v),
                        Divider(),
                        SizedBox(height: 97.v),
                        Divider(),
                        SizedBox(height: 97.v),
                        Divider(),
                        SizedBox(height: 97.v),
                        Divider(),
                        SizedBox(height: 97.v),
                        Divider(),
                        SizedBox(height: 98.v),
                        Divider(),
                        SizedBox(height: 99.v),
                        Divider()
                      ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 56.v,
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 20.h),
            hintText: "lbl_search_listings".tr,
            controller: controller.searchController),
        actions: [
          AppbarTrailingIconbuttonTwo(
              imagePath: ImageConstant.imgGroup6034,
              margin: EdgeInsets.fromLTRB(9.h, 6.v, 19.h, 6.v))
        ]);
  }

  /// Section Widget
  Widget _buildChat() {
    return Expanded(
        child: Obx(() => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.5.v),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: appTheme.gray100)));
            },
            itemCount: controller.chatModelObj.value.chatItemList.value.length,
            itemBuilder: (context, index) {
              ChatItemModel model =
                  controller.chatModelObj.value.chatItemList.value[index];
              return ChatItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildTwentyOne() {
    return GestureDetector(
        onTap: () {
          onTapTwentyOne();
        },
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgProfile26x26,
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  margin: EdgeInsets.only(top: 4.v, bottom: 6.v)),
              Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: _buildTwenty(
                      userName: "lbl_adejoh_moses".tr,
                      userMessage: "msg_obafemi_awolowo".tr,
                      userPatronage: "msg_thanks_for_the_patronage".tr)),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 2.v, bottom: 35.v),
                  child: Text("lbl_6_07_pm".tr,
                      style: CustomTextStyles.bodySmall12)),
              Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(left: 7.h, top: 4.v, bottom: 40.v),
                  decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(4.h)))
            ]));
  }

  /// Section Widget
  Widget _buildTwentyThree() {
    return GestureDetector(
        onTap: () {
          onTapTwentyThree();
        },
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgProfile26x26,
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  margin: EdgeInsets.only(top: 4.v, bottom: 6.v)),
              Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: _buildTwenty(
                      userName: "lbl_adejoh_moses".tr,
                      userMessage: "msg_obafemi_awolowo".tr,
                      userPatronage: "msg_thanks_for_the_patronage".tr)),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 2.v, bottom: 35.v),
                  child: Text("lbl_6_07_pm".tr,
                      style: CustomTextStyles.bodySmall12)),
              Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(left: 7.h, top: 4.v, bottom: 40.v),
                  decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(4.h)))
            ]));
  }

  /// Section Widget
  Widget _buildTwenty3() {
    return GestureDetector(
        onTap: () {
          onTapTwenty();
        },
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgProfile26x26,
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  margin: EdgeInsets.only(top: 4.v, bottom: 6.v)),
              Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: _buildTwenty(
                      userName: "lbl_adejoh_moses".tr,
                      userMessage: "msg_obafemi_awolowo".tr,
                      userPatronage: "msg_thanks_for_the_patronage".tr)),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 2.v, bottom: 35.v),
                  child: Text("lbl_6_07_pm".tr,
                      style: CustomTextStyles.bodySmall12)),
              Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(left: 7.h, top: 4.v, bottom: 40.v),
                  decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(4.h)))
            ]));
  }

  /// Section Widget
  Widget _buildTwenty5() {
    return GestureDetector(
        onTap: () {
          onTapTwenty1();
        },
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgProfile26x26,
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  margin: EdgeInsets.only(top: 4.v, bottom: 6.v)),
              Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: _buildTwenty(
                      userName: "lbl_adejoh_moses".tr,
                      userMessage: "msg_obafemi_awolowo".tr,
                      userPatronage: "msg_thanks_for_the_patronage".tr)),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 2.v, bottom: 35.v),
                  child: Text("lbl_6_07_pm".tr,
                      style: CustomTextStyles.bodySmall12)),
              Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(left: 7.h, top: 4.v, bottom: 40.v),
                  decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(4.h)))
            ]));
  }

  /// Common widget
  Widget _buildTwenty({
    required String userName,
    required String userMessage,
    required String userPatronage,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(userName,
          style: theme.textTheme.titleMedium!
              .copyWith(color: appTheme.black900.withOpacity(0.85))),
      Text(userMessage,
          style: theme.textTheme.bodySmall!
              .copyWith(color: appTheme.black900.withOpacity(0.85))),
      SizedBox(height: 6.v),
      Text(userPatronage,
          style: CustomTextStyles.bodySmall12
              .copyWith(color: appTheme.black900.withOpacity(0.85)))
    ]);
  }

  /// Navigates to the messageScreen when the action is triggered.
  onTapTwentyOne() {
    Get.toNamed(
      AppRoutes.messageScreen,
    );
  }

  /// Navigates to the messageScreen when the action is triggered.
  onTapTwentyThree() {
    Get.toNamed(
      AppRoutes.messageScreen,
    );
  }

  /// Navigates to the messageScreen when the action is triggered.
  onTapTwenty() {
    Get.toNamed(
      AppRoutes.messageScreen,
    );
  }

  /// Navigates to the messageScreen when the action is triggered.
  onTapTwenty1() {
    Get.toNamed(
      AppRoutes.messageScreen,
    );
  }
}
