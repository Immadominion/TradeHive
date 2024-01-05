import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../wishlists_one_page/widgets/productisnolonger_item_widget.dart';
import 'controller/wishlists_one_controller.dart';
import 'models/productisnolonger_item_model.dart';
import 'models/wishlists_one_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/widgets/app_bar/appbar_subtitle.dart';
import 'package:tradehive/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class WishlistsOnePage extends StatelessWidget {
  WishlistsOnePage({Key? key}) : super(key: key);

  WishlistsOneController controller =
      Get.put(WishlistsOneController(WishlistsOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Column(children: [
                  _buildFortySix(),
                  SizedBox(
                      height: 638.sp,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        SizedBox(
                            width: double.maxFinite,
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 19.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          _buildUnsplashOBaEeEsA(),
                                          SizedBox(height: 47.sp),
                                          _buildProductIsNoLonger()
                                        ])))),
                        Align(
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
                                      Divider()
                                    ])))
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildFortySix() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12.sp),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 9.sp),
          CustomAppBar(
              title: AppbarSubtitle(
                  text: "lbl_saved_products".tr,
                  margin: EdgeInsets.only(left: 15.h)))
        ]));
  }

  /// Section Widget
  Widget _buildUnsplashOBaEeEsA() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 7.sp),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          CustomImageView(
              imagePath: ImageConstant.imgUnsplashOb2aeee8s4a114x128,
              height: 114.sp,
              width: 128.h,
              radius: BorderRadius.circular(5.h)),
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
  Widget _buildProductIsNoLonger() {
    return Expanded(
        child: Obx(() => GroupedListView<ProductisnolongerItemModel, String>(
              shrinkWrap: true,
              stickyHeaderBackgroundColor: Colors.transparent,
              elements: controller
                  .wishlistsOneModelObj.value.productisnolongerItemList.value,
              groupBy: (element) => element.groupBy!.value,
              sort: false,
              groupSeparatorBuilder: (String value) {
                return Padding(
                    padding: EdgeInsets.only(top: 47.sp, bottom: 3.sp),
                    child: Text(value,
                        style: CustomTextStyles.bodySmall12.copyWith(
                            color: appTheme.black900.withOpacity(0.85))));
              },
              itemBuilder: (context, model) {
                return ProductisnolongerItemWidget(model);
              },
              separator: SizedBox(
                height: 45.sp,
              ),
            )));
  }

  /// Navigates to the wishlistsScreen when the action is triggered.
  onTapImgImage() {
    Get.toNamed(
      AppRoutes.wishlistsScreen,
    );
  }
}
