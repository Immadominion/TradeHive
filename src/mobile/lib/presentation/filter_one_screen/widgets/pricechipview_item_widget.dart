import '../models/pricechipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';

// ignore: must_be_immutable
class PricechipviewItemWidget extends StatelessWidget {
  PricechipviewItemWidget(
    this.pricechipviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PricechipviewItemModel pricechipviewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 9.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            pricechipviewItemModelObj.lowestPrice!.value,
            style: TextStyle(
              color: appTheme.gray900,
              fontSize: 14.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: (pricechipviewItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.gray900.withOpacity(0.2),
          shape: (pricechipviewItemModelObj.isSelected?.value ?? false)
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.black900.withOpacity(0.85),
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    7.h,
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.black900.withOpacity(0.85),
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    7.h,
                  ),
                ),
          onSelected: (value) {
            pricechipviewItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
