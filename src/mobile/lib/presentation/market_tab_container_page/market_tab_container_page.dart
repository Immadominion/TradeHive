import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/market_tab_container_controller.dart';
import 'models/market_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/market_one_page/market_one_page.dart';
import 'package:tradehive/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:tradehive/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:tradehive/widgets/app_bar/custom_app_bar.dart';
import 'package:tradehive/widgets/custom_icon_button.dart';
import 'package:tradehive/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class MarketTabContainerPage extends StatelessWidget {
  MarketTabContainerPage({Key? key}) : super(key: key);

  MarketTabContainerController controller =
      Get.put(MarketTabContainerController(MarketTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 19.sp),
                  _buildSearchFilter(),
                  SizedBox(height: 20.sp),
                  _buildCategorySeeAll(),
                  SizedBox(height: 14.sp),
                  _buildTabView(),
                  Expanded(
                      child: SizedBox(
                          height: 485.sp,
                          child: TabBarView(
                              controller: controller.tabviewController,
                              children: [
                                MarketOnePage(),
                                MarketOnePage(),
                                MarketOnePage()
                              ])))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 56.h,
        leadingWidth: 72.h,
        leading: AppbarLeadingCircleimage(
            imagePath: ImageConstant.imgUnsplash3tll97hnjo,
            margin: EdgeInsets.only(left: 20.h, top: 2.sp, bottom: 2.sp)),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgNotification,
              margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.sp),
              onTap: () {
                onTapNotification();
              })
        ]);
  }

  /// Section Widget
  Widget _buildSearchFilter() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
            child: CustomSearchView(
                controller: controller.searchController,
                hintText: "lbl_search_listings".tr),
          ),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: CustomIconButton(
              height: 43.sp,
              width: 42.h,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.fillGray,
              onTap: () {
                onTapBtnFilter();
              },
              child: CustomImageView(imagePath: ImageConstant.imgFilter),
            ),
          ),
        ]));
  }

  /// Section Widget
  Widget _buildCategorySeeAll() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 1.sp),
              child: Text("lbl_category".tr,
                  style: CustomTextStyles.bodySmallInter12)),
          Text("lbl_see_all".tr, style: CustomTextStyles.bodySmallInter12)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabView() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 19.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 39.sp,
              width: 332.h,
              child: TabBar(
                controller: controller.tabviewController,
                labelPadding: EdgeInsets.zero,
                labelColor: appTheme.whiteA700,
                labelStyle: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700),
                unselectedLabelColor: appTheme.gray800,
                unselectedLabelStyle: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700),
                indicator: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(10.h),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    child: Text("lbl_all".tr),
                  ),
                  Tab(
                    child: Text("lbl_textbook".tr),
                  ),
                  Tab(
                    child: Text("lbl_services".tr),
                  ),
                ],
              ),
            ),
            Container(
                width: 117.h,
                margin: EdgeInsets.only(left: 10.h, bottom: 1.sp),
                padding:
                    EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.sp),
                decoration: AppDecoration.outlineGray800
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Text("lbl_textbook".tr,
                    style: CustomTextStyles.labelLargeGray800)),
            Container(
                width: 113.h,
                margin: EdgeInsets.only(left: 10.h, bottom: 1.sp),
                padding:
                    EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.sp),
                decoration: AppDecoration.outlineGray800
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Text("lbl_services".tr,
                    style: CustomTextStyles.labelLargeGray800)),
            Container(
                width: 117.h,
                margin: EdgeInsets.only(left: 10.h, bottom: 1.sp),
                padding:
                    EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.sp),
                decoration: AppDecoration.outlineGray800
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Text("lbl_textbook".tr,
                    style: CustomTextStyles.labelLargeGray800)),
            Container(
                width: 113.h,
                margin: EdgeInsets.only(left: 10.h, bottom: 1.sp),
                padding:
                    EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.sp),
                decoration: AppDecoration.outlineGray800
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Text("lbl_services".tr,
                    style: CustomTextStyles.labelLargeGray800)),
            Container(
                width: 113.h,
                margin: EdgeInsets.only(left: 10.h, bottom: 1.sp),
                padding:
                    EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.sp),
                decoration: AppDecoration.outlineGray800
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Text("lbl_services".tr,
                    style: CustomTextStyles.labelLargeGray800))
          ],
        ),
      ),
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  onTapNotification() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the filterOneScreen when the action is triggered.
  onTapBtnFilter() {
    Get.toNamed(
      AppRoutes.filterOneScreen,
    );
  }
}
