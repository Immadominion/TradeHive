import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/notifications_controller.dart';
import '../models/notifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  NotificationsItemWidget(
    this.notificationsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationsItemModel notificationsItemModelObj;

  var controller = Get.find<NotificationsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.sp),
          Padding(
            padding: EdgeInsets.only(right: 7.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: notificationsItemModelObj.image!.value,
                    height: 24.sp,
                    width: 24.sp,
                    margin: EdgeInsets.only(bottom: 9.sp),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 213.h,
                    margin: EdgeInsets.only(left: 12.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_3_unread_messages2".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                          TextSpan(
                            text: "lbl_bolututor123".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup6065Errorcontainer,
                  height: 15.sp,
                  width: 3.h,
                  margin: EdgeInsets.only(
                    left: 61.h,
                    top: 6.sp,
                    bottom: 12.sp,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.sp),
          Padding(
            padding: EdgeInsets.only(left: 36.h),
            child: Obx(
              () => Text(
                notificationsItemModelObj.duration!.value,
                style: CustomTextStyles.bodySmallInter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
