import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/chat_controller.dart';
import '../models/chat_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';

// ignore: must_be_immutable
class ChatItemWidget extends StatelessWidget {
  ChatItemWidget(
    this.chatItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChatItemModel chatItemModelObj;

  var controller = Get.find<ChatController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 11.sp,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgProfile26x26,
            height: 42.sp,
            width: 42.sp,
            margin: EdgeInsets.only(
              top: 4.sp,
              bottom: 13.sp,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 11.h,
                bottom: 7.sp,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Obx(
                        () => Text(
                          chatItemModelObj.adejohMoses!.value,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(top: 2.sp),
                        child: Obx(
                          () => Text(
                            chatItemModelObj.time!.value,
                            style: CustomTextStyles.bodySmall12,
                          ),
                        ),
                      ),
                      Container(
                        height: 8.sp,
                        width: 8.sp,
                        margin: EdgeInsets.only(
                          left: 7.h,
                          top: 4.sp,
                          bottom: 6.sp,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Obx(
                    () => Text(
                      chatItemModelObj.obafemiAwolowo!.value,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 6.sp),
                  Obx(
                    () => Text(
                      chatItemModelObj.thanksforthepatronage!.value,
                      style: CustomTextStyles.bodySmall12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
