import '../filter_one_screen/widgets/conditionchipview_item_widget.dart';
import '../filter_one_screen/widgets/pricechipview_item_widget.dart';
import '../filter_one_screen/widgets/recentchipview_item_widget.dart';
import 'controller/filter_one_controller.dart';
import 'models/conditionchipview_item_model.dart';
import 'models/pricechipview_item_model.dart';
import 'models/recentchipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/widgets/custom_drop_down.dart';
import 'package:tradehive/widgets/custom_elevated_button.dart';
import 'package:tradehive/widgets/custom_outlined_button.dart';

class FilterOneScreen extends GetWidget<FilterOneController> {
  const FilterOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 28.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFilterRow(),
                      SizedBox(height: 19.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("lbl_institutions".tr,
                              style: theme.textTheme.titleSmall)),
                      SizedBox(height: 11.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: CustomDropDown(
                              icon: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      30.h, 15.v, 14.h, 15.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowdown,
                                      height: 7.v,
                                      width: 15.h)),
                              hintText: "lbl_all_institution".tr,
                              items: controller.filterOneModelObj.value
                                  .dropdownItemList!.value,
                              onChanged: (value) {
                                controller.onSelected(value);
                              })),
                      SizedBox(height: 24.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("lbl_category".tr,
                              style: theme.textTheme.titleSmall)),
                      SizedBox(height: 8.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: CustomDropDown(
                              icon: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      30.h, 15.v, 14.h, 15.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowdown,
                                      height: 7.v,
                                      width: 15.h)),
                              hintText: "lbl_all_categories".tr,
                              items: controller.filterOneModelObj.value
                                  .dropdownItemList1!.value,
                              onChanged: (value) {
                                controller.onSelected1(value);
                              })),
                      SizedBox(height: 27.v),
                      _buildRecentChipView(),
                      SizedBox(height: 24.v),
                      _buildPriceChipView(),
                      SizedBox(height: 24.v),
                      _buildConditionChipView(),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildApplyButton()));
  }

  /// Section Widget
  Widget _buildFilterRow() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomElevatedButton(
              height: 20.v,
              width: 80.h,
              text: "lbl_filters".tr,
              margin: EdgeInsets.only(top: 5.v, bottom: 10.v),
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 10.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowrightOnprimary,
                      height: 20.adaptSize,
                      width: 20.adaptSize)),
              buttonStyle: CustomButtonStyles.none,
              buttonTextStyle: CustomTextStyles.titleMediumInter_1,
              onPressed: () {
                onTapFilters();
              }),
          CustomOutlinedButton(
              height: 36.v,
              width: 95.h,
              text: "lbl_clear_all".tr,
              rightIcon: Container(
                  margin: EdgeInsets.only(left: 6.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowrightOnprimary,
                      height: 16.adaptSize,
                      width: 16.adaptSize)),
              buttonTextStyle: CustomTextStyles.bodyMediumBlack900)
        ]);
  }

  /// Section Widget
  Widget _buildRecentChipView() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Obx(() => Wrap(
            runSpacing: 5.8.v,
            spacing: 5.8.h,
            children: List<Widget>.generate(
                controller.filterOneModelObj.value.recentchipviewItemList.value
                    .length, (index) {
              RecentchipviewItemModel model = controller
                  .filterOneModelObj.value.recentchipviewItemList.value[index];
              return RecentchipviewItemWidget(model);
            }))));
  }

  /// Section Widget
  Widget _buildPriceChipView() {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: Obx(() => Wrap(
            runSpacing: 4.8.v,
            spacing: 4.8.h,
            children: List<Widget>.generate(
                controller.filterOneModelObj.value.pricechipviewItemList.value
                    .length, (index) {
              PricechipviewItemModel model = controller
                  .filterOneModelObj.value.pricechipviewItemList.value[index];
              return PricechipviewItemWidget(model);
            }))));
  }

  /// Section Widget
  Widget _buildConditionChipView() {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: Obx(() => Wrap(
            runSpacing: 6.v,
            spacing: 6.h,
            children: List<Widget>.generate(
                controller.filterOneModelObj.value.conditionchipviewItemList
                    .value.length, (index) {
              ConditionchipviewItemModel model = controller.filterOneModelObj
                  .value.conditionchipviewItemList.value[index];
              return ConditionchipviewItemWidget(model);
            }))));
  }

  /// Section Widget
  Widget _buildApplyButton() {
    return CustomElevatedButton(
        height: 48.v,
        text: "lbl_apply".tr,
        margin: EdgeInsets.only(left: 20.h, right: 21.h, bottom: 35.v),
        buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
        onPressed: () {
          onTapApplyButton();
        });
  }

  /// Navigates to the marketContainerScreen when the action is triggered.
  onTapFilters() {
    Get.toNamed(
      AppRoutes.marketContainerScreen,
    );
  }

  /// Navigates to the marketContainerScreen when the action is triggered.
  onTapApplyButton() {
    Get.toNamed(
      AppRoutes.marketContainerScreen,
    );
  }
}
