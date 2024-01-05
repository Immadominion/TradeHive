import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/hivelogin_controller.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/core/utils/validation_functions.dart';
import 'package:tradehive/widgets/custom_elevated_button.dart';
import 'package:tradehive/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HiveloginScreen extends GetWidget<HiveloginController> {
  HiveloginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: 375.h,
            child: Column(
              children: [
                SizedBox(height: 11.sp),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 16.h, right: 16.h, bottom: 50.sp),
                      child: Column(
                        children: [
                          CustomImageView(
                              imagePath:
                                  ImageConstant.imgArrowLeftPrimarycontainer,
                              height: 20.sp,
                              width: 20.sp,
                              alignment: Alignment.centerLeft,
                              onTap: () {
                                onTapImgArrowLeft();
                              }),
                          SizedBox(height: 31.sp),
                          CustomImageView(
                              imagePath: ImageConstant.imgGroup67,
                              height: 76.sp,
                              width: 80.h),
                          SizedBox(height: 22.sp),
                          Text("lbl_trade_hive".tr,
                              style: theme.textTheme.displaySmall),
                          SizedBox(height: 5.sp),
                          Container(
                              width: 245.h,
                              margin: EdgeInsets.only(left: 49.h, right: 48.h),
                              child: Text("msg_connecting_students".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyMediumBluegray500
                                      .copyWith(height: 1.43))),
                          SizedBox(height: 35.sp),
                          CustomTextFormField(
                              controller: controller.userNameController,
                              hintText: "lbl_username".tr,
                              validator: (value) {
                                if (!isText(value)) {
                                  return "err_msg_please_enter_valid_text".tr;
                                }
                                return null;
                              },
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 14.sp)),
                          SizedBox(height: 12.sp),
                          CustomTextFormField(
                              controller: controller.passwordController,
                              hintText: "lbl_password".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "err_msg_please_enter_valid_password"
                                      .tr;
                                }
                                return null;
                              },
                              obscureText: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 14.sp)),
                          SizedBox(height: 24.sp),
                          CustomElevatedButton(
                            text: "lbl_log_in2".tr,
                            onPressed: () {
                              onTapLogIn();
                            },
                          ),
                          SizedBox(height: 14.sp),
                          GestureDetector(
                            onTap: () {
                              goToSignIn();
                            },
                            child: Text(
                              "msg_forgotten_password".tr,
                              style: CustomTextStyles.bodySmallInterBluegray700,
                            ),
                          ),
                          SizedBox(height: 206.sp),
                          GestureDetector(
                            onTap: () {
                              goToSignIn();
                            },
                            child: Text(
                              "msg_sign_up_for_trade".tr,
                              style:
                                  CustomTextStyles.titleSmallPrimaryContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }

  goToSignIn() {
    Get.toNamed(
      AppRoutes.twoScreen,
    );
  }

  /// Navigates to the marketContainerScreen when the action is triggered.
  onTapLogIn() {
    Get.toNamed(
      AppRoutes.marketContainerScreen,
    );
  }
}
