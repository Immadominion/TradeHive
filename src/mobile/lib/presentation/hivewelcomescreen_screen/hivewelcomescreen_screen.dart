import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/widgets/custom_elevated_button.dart';

class HivewelcomescreenScreen extends StatefulWidget {
  const HivewelcomescreenScreen({Key? key}) : super(key: key);

  @override
  _HivewelcomescreenScreenState createState() =>
      _HivewelcomescreenScreenState();
}

class _HivewelcomescreenScreenState extends State<HivewelcomescreenScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              SizedBox(height: 32.sp),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  children: [
                    // Add more pages as needed
                    _buildPage(
                      "empower_student_entrepreneurs".tr,
                      ImageConstant.imgImagePlaceholder1,
                      "empower_student_entrepreneurs_page".tr,
                    ),
                    _buildPage(
                      "discover_exclusive_deals".tr,
                      ImageConstant.imgImagePlaceholder2,
                      "discover_exclusive_deals_page".tr,
                    ),
                    _buildPage(
                      "support_the_student_community".tr,
                      ImageConstant.imgImagePlaceholder3,
                      "support_the_student_community_page".tr,
                    ),
                    _buildPage(
                      "lbl_trade_hive".tr,
                      ImageConstant.imgImagePlaceholder,
                      "msg_connecting_student".tr,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.sp),
              AnimatedSmoothIndicator(
                activeIndex: _currentPage,
                count: 4,
                effect: ScrollingDotsEffect(
                  spacing: 8,
                  activeDotColor: theme.colorScheme.secondaryContainer,
                  dotColor: appTheme.gray300,
                  dotHeight: 8.sp,
                  dotWidth: 8.h,
                ),
              ),
              SizedBox(height: 32.sp),
              _currentPage == 3
                  ? CustomElevatedButton(
                      height: 48.sp,
                      width: 182.h,
                      text: "lbl_create_account".tr,
                      buttonStyle: CustomButtonStyles.fillSecondaryContainer,
                      onPressed: () {
                        onTapCreateAccount();
                      },
                    )
                  : SizedBox(),
              SizedBox(height: 27.sp),
              GestureDetector(
                onTap: () {
                  onTapTxtHaveanaccount();
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "msg_have_an_account2".tr,
                          style: CustomTextStyles.bodyLargeGray90001_1),
                      TextSpan(
                        text: "lbl_log_in".tr,
                        style:
                            CustomTextStyles.titleMediumInterSecondaryContainer,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPage(String title, String imagePath, String description) {
    return Padding(
      padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 66.sp),
      child: Column(
        children: [
          SizedBox(
            height: 50.h,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 33.sp),
          CustomImageView(
            imagePath: imagePath,
            height: 327.sp,
            width: 327.sp,
          ),
          SizedBox(height: 31.sp),
          SizedBox(
            width: 300.h,
            height: 80.h,
            child: AutoSizeText(
              description,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxFontSize: 18,
              minFontSize: 16,
              stepGranularity: 2,
              style: CustomTextStyles.titleLargeOnPrimary,
            ),
          ),
        ],
      ),
    );
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

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
