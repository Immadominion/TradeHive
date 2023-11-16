import '../controller/wishlists_one_controller.dart';
import '../models/productisnolonger_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';

// ignore: must_be_immutable
class ProductisnolongerItemWidget extends StatelessWidget {
  ProductisnolongerItemWidget(
    this.productisnolongerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductisnolongerItemModel productisnolongerItemModelObj;

  var controller = Get.find<WishlistsOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.v),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashOb2aeee8s4a3,
            height: 114.v,
            width: 128.h,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 131.h,
                      margin: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "msg_new_balance_classic".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleSmallRoboto.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgCloseErrorcontainer20x20,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(
                        left: 16.h,
                        bottom: 23.v,
                      ),
                      onTap: () {
                        //onTapImgImage();
                      },
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Text(
                  "msg_obafemi_awolowo".tr,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 40.v),
                Text(
                  "lbl_7000".tr,
                  style: CustomTextStyles.labelMediumRobotoBlack900,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
