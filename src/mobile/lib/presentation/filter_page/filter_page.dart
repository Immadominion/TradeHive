import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/filter_controller.dart';
import 'models/filter_model.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/widgets/app_bar/appbar_subtitle.dart';
import 'package:tradehive/widgets/app_bar/custom_app_bar.dart';
import 'package:tradehive/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class FilterPage extends StatelessWidget {
  FilterPage({Key? key}) : super(key: key);

  FilterController controller = Get.put(FilterController(FilterModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Column(children: [
                  _buildSeventeen(),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.h, vertical: 43.sp),
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: 235.h,
                                margin: EdgeInsets.only(left: 4.h, right: 82.h),
                                child: Text("msg_what_type_of_listing".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleLarge!
                                        .copyWith(height: 1.20)))),
                        SizedBox(height: 22.sp),
                        CustomOutlinedButton(
                            text: "lbl_products".tr,
                            buttonTextStyle: CustomTextStyles.titleMediumMedium,
                            onPressed: () {
                              onTapProducts();
                            }),
                        SizedBox(height: 18.sp),
                        CustomOutlinedButton(
                            text: "lbl_service".tr,
                            buttonTextStyle: CustomTextStyles.titleMediumMedium,
                            onPressed: () {
                              onTapService();
                            }),
                        SizedBox(
                          height: 5.sp,
                        ),
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildSeventeen() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 14.sp),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 5.sp),
          CustomAppBar(
              title: AppbarSubtitle(
                  text: "msg_choose_listing_type".tr,
                  margin: EdgeInsets.only(left: 23.h)))
        ]));
  }

  /// Navigates to the sellScreen when the action is triggered.
  onTapProducts() {
    Get.toNamed(
      AppRoutes.sellScreen,
    );
  }

  /// Navigates to the sellScreen when the action is triggered.
  onTapService() {
    Get.toNamed(
      AppRoutes.sellScreen,
    );
  }
}
