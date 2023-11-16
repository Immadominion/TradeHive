import '../controller/market_controller.dart';
import '../models/market_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MarketItemWidget extends StatelessWidget {
  MarketItemWidget(
    this.marketItemModelObj, {
    Key? key,
    this.onTapFrame,
  }) : super(
          key: key,
        );

  MarketItemModel marketItemModelObj;

  var controller = Get.find<MarketController>();

  VoidCallback? onTapFrame;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapFrame!.call();
      },
      child: Container(
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
                      imagePath: marketItemModelObj.image!.value,
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
                  marketItemModelObj.newBalanceClassic!.value,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ),
            SizedBox(height: 6.v),
            Align(
              alignment: Alignment.center,
              child: Obx(
                () => Text(
                  marketItemModelObj.obafemiAwolowo!.value,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ),
            SizedBox(height: 20.v),
            Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Obx(
                () => Text(
                  marketItemModelObj.price!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ),
            SizedBox(height: 2.v),
          ],
        ),
      ),
    );
  }
}
