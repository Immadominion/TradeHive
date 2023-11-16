import '../controller/market_one_controller.dart';
import '../models/marketone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MarketoneItemWidget extends StatelessWidget {
  MarketoneItemWidget(
    this.marketoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MarketoneItemModel marketoneItemModelObj;

  var controller = Get.find<MarketOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 132.v,
            width: 141.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: marketoneItemModelObj.image!.value,
                    height: 132.v,
                    width: 141.h,
                    radius: BorderRadius.circular(
                      5.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 6.v,
                    right: 8.h,
                  ),
                  child: CustomIconButton(
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    padding: EdgeInsets.all(2.h),
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup66,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Container(
            width: 105.h,
            margin: EdgeInsets.only(left: 6.h),
            child: Obx(
              () => Text(
                marketoneItemModelObj.newBalanceClassic!.value,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMediumBlack900,
              ),
            ),
          ),
          SizedBox(height: 6.v),
          Align(
            alignment: Alignment.center,
            child: Obx(
              () => Text(
                marketoneItemModelObj.obafemiAwolowo!.value,
                style: CustomTextStyles.bodySmallBlack900_1,
              ),
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Obx(
              () => Text(
                marketoneItemModelObj.price!.value,
                style: CustomTextStyles.labelLargeBlack900,
              ),
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}
