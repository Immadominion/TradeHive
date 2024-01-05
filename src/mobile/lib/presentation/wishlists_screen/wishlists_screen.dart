import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../wishlists_screen/widgets/productisnolonger2_item_widget.dart';
import 'controller/wishlists_controller.dart';
import 'models/productisnolonger2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/chat_page/chat_page.dart';
import 'package:tradehive/presentation/filter_page/filter_page.dart';
import 'package:tradehive/presentation/market_tab_container_page/market_tab_container_page.dart';
import 'package:tradehive/presentation/user_dashboard_page/user_dashboard_page.dart';
import 'package:tradehive/presentation/wishlists_one_page/wishlists_one_page.dart';
import 'package:tradehive/widgets/app_bar/appbar_title.dart';
import 'package:tradehive/widgets/app_bar/custom_app_bar.dart';
import 'package:tradehive/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class WishlistsScreen extends GetWidget<WishlistsController> {
  const WishlistsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildThirtyNine(),
              SizedBox(
                height: 638.sp,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 19.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildUnsplashOBaEeEsA(),
                              SizedBox(height: 47.sp),
                              _buildProductIsNoLonger(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    _buildLineTen(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyNine() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.sp),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 9.sp),
          CustomAppBar(
            title: AppbarTitle(
              text: "lbl_saved_products".tr,
              margin: EdgeInsets.only(left: 15.h),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUnsplashOBaEeEsA() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.sp),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashOb2aeee8s4a114x128,
            height: 114.sp,
            width: 128.h,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 131.h,
                      margin: EdgeInsets.only(top: 1.sp),
                      child: Text(
                        "msg_new_balance_classic".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:
                            CustomTextStyles.titleSmallRobotoBlack900.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgCloseErrorcontainer20x20,
                      height: 20.sp,
                      width: 20.sp,
                      margin: EdgeInsets.only(
                        left: 16.h,
                        bottom: 23.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.sp),
                Text(
                  "msg_obafemi_awolowo".tr,
                  style: CustomTextStyles.bodySmallBlack900_1,
                ),
                SizedBox(height: 40.sp),
                Text(
                  "lbl_7000".tr,
                  style: CustomTextStyles.labelMediumRobotoBlack900_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductIsNoLonger() {
    return Expanded(
      child: Obx(
        () => GroupedListView<Productisnolonger2ItemModel, String>(
          shrinkWrap: true,
          stickyHeaderBackgroundColor: Colors.transparent,
          elements: controller
              .wishlistsModelObj.value.productisnolonger2ItemList.value,
          groupBy: (element) => element.groupBy!.value,
          sort: false,
          groupSeparatorBuilder: (String value) {
            return Padding(
              padding: EdgeInsets.only(
                top: 47.sp,
                bottom: 3.sp,
              ),
              child: Text(
                value,
                style: CustomTextStyles.bodySmallBlack900.copyWith(
                  color: appTheme.black900,
                ),
              ),
            );
          },
          itemBuilder: (context, model) {
            return Productisnolonger2ItemWidget(
              model,
            );
          },
          separator: SizedBox(
            height: 45.sp,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLineTen() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 107.sp),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(),
            SizedBox(height: 184.sp),
            Divider(),
            SizedBox(height: 174.sp),
            Divider(),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Market:
        return AppRoutes.marketTabContainerPage;
      case BottomBarEnum.Messages:
        return AppRoutes.chatPage;
      case BottomBarEnum.Sell:
        return AppRoutes.filterPage;
      case BottomBarEnum.Wishlists:
        return AppRoutes.wishlistsOnePage;
      case BottomBarEnum.Profile:
        return AppRoutes.userDashboardPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.marketTabContainerPage:
        return MarketTabContainerPage();
      case AppRoutes.chatPage:
        return ChatPage();
      case AppRoutes.filterPage:
        return FilterPage();
      case AppRoutes.wishlistsOnePage:
        return WishlistsOnePage();
      case AppRoutes.userDashboardPage:
        return UserDashboardPage();
      default:
        return DefaultWidget();
    }
  }
}
