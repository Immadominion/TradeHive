import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/user_dashboard_controller.dart';
import '../models/userdashboard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserdashboardItemWidget extends StatelessWidget {
  UserdashboardItemWidget(
    this.userdashboardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserdashboardItemModel userdashboardItemModelObj;

  var controller = Get.find<UserDashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 153.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 132.sp,
            width: 141.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: userdashboardItemModelObj.image!.value,
                    height: 132.sp,
                    width: 141.h,
                    radius: BorderRadius.circular(
                      5.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 6.sp,
                    right: 7.h,
                  ),
                  child: CustomIconButton(
                    height: 20.sp,
                    width: 20.sp,
                    padding: EdgeInsets.all(4.h),
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup66Errorcontainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.sp),
          Container(
            width: 105.h,
            margin: EdgeInsets.only(left: 6.h),
            child: Obx(
              () => Text(
                userdashboardItemModelObj.newBalanceClassic!.value,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          SizedBox(height: 5.sp),
          Align(
            alignment: Alignment.center,
            child: Obx(
              () => Text(
                userdashboardItemModelObj.obafemiAwolowo!.value,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
          SizedBox(height: 20.sp),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Obx(
              () => Text(
                userdashboardItemModelObj.price!.value,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
          SizedBox(height: 2.sp),
        ],
      ),
    );
  }
}
