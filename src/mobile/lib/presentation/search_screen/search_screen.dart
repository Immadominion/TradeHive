import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../search_screen/widgets/searchlist_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/searchlist_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/widgets/custom_text_form_field.dart';

class SearchScreen extends GetWidget<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 15.sp),
                child: Column(children: [
                  _buildSearchBars(),
                  SizedBox(height: 26.sp),
                  _buildSearchList()
                ]))));
  }

  /// Section Widget
  Widget _buildSearchBars() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: CustomTextFormField(
                      controller: controller.iconController,
                      hintText: "lbl_tutor".tr,
                      hintStyle: CustomTextStyles.bodyLargeOnPrimary,
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(8.h, 10.sp, 12.h, 10.sp),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIcon,
                          height: 16.sp,
                          width: 16.sp,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(maxHeight: 36.sp),
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 10.sp, 8.h, 10.sp),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowrightOnprimary,
                          height: 16.sp,
                          width: 16.sp,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(maxHeight: 36.sp),
                      contentPadding: EdgeInsets.symmetric(vertical: 8.sp),
                      borderDecoration: TextFormFieldStyleHelper.fillGray,
                      filled: true,
                      fillColor: appTheme.gray100)),
              GestureDetector(
                  onTap: () {
                    onTapTxtCancel();
                  },
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 16.h, top: 8.sp, bottom: 7.sp),
                      child: Text("lbl_cancel".tr,
                          style: CustomTextStyles.bodyLargeOnPrimary)))
            ]));
  }

  /// Section Widget
  Widget _buildSearchList() {
    return Expanded(
        child: Obx(() => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 7.sp,
              );
            },
            itemCount:
                controller.searchModelObj.value.searchlistItemList.value.length,
            itemBuilder: (context, index) {
              SearchlistItemModel model = controller
                  .searchModelObj.value.searchlistItemList.value[index];
              return SearchlistItemWidget(model);
            })));
  }

  /// Navigates to the marketContainerScreen when the action is triggered.
  onTapTxtCancel() {
    Get.toNamed(
      AppRoutes.marketContainerScreen,
    );
  }
}
