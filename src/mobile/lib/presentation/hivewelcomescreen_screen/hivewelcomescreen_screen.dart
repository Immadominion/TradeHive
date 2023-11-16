import 'controller/hivewelcomescreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/widgets/custom_elevated_button.dart';

class HivewelcomescreenScreen extends GetWidget<HivewelcomescreenController> {
  const HivewelcomescreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 375.h,
                child: Column(children: [
                  SizedBox(height: 32.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h, right: 24.h, bottom: 66.v),
                              child: Column(children: [
                                Text("lbl_trade_hive".tr,
                                    style: theme.textTheme.headlineSmall),
                                SizedBox(height: 33.v),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgImagePlaceholder,
                                    height: 327.adaptSize,
                                    width: 327.adaptSize),
                                SizedBox(height: 31.v),
                                SizedBox(
                                    width: 197.h,
                                    child: Text("msg_connecting_student".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .titleLargeOnPrimary)),
                                SizedBox(height: 54.v),
                                SizedBox(
                                    height: 8.v,
                                    child: AnimatedSmoothIndicator(
                                        activeIndex: 0,
                                        count: 4,
                                        effect: ScrollingDotsEffect(
                                            spacing: 8,
                                            activeDotColor: theme
                                                .colorScheme.secondaryContainer,
                                            dotColor: appTheme.gray300,
                                            dotHeight: 8.v,
                                            dotWidth: 8.h))),
                                SizedBox(height: 32.v),
                                CustomElevatedButton(
                                    height: 48.v,
                                    width: 182.h,
                                    text: "lbl_create_account".tr,
                                    buttonStyle: CustomButtonStyles
                                        .fillSecondaryContainer,
                                    onPressed: () {
                                      onTapCreateAccount();
                                    }),
                                SizedBox(height: 27.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtHaveanaccount();
                                    },
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "msg_have_an_account2".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeGray90001_1),
                                          TextSpan(
                                              text: "lbl_log_in".tr,
                                              style: CustomTextStyles
                                                  .titleMediumInterSecondaryContainer)
                                        ]),
                                        textAlign: TextAlign.left))
                              ]))))
                ]))));
  }

  /// Navigates to the hiveloginScreen when the action is triggered.
  onTapCreateAccount() {
    Get.toNamed(
      AppRoutes.hiveloginScreen,
    );
  }

  /// Navigates to the hiveloginScreen when the action is triggered.
  onTapTxtHaveanaccount() {
    Get.toNamed(
      AppRoutes.hiveloginScreen,
    );
  }
}
