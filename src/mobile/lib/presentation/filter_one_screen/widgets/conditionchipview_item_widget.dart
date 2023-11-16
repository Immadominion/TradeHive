import '../models/conditionchipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';

// ignore: must_be_immutable
class ConditionchipviewItemWidget extends StatelessWidget {
  ConditionchipviewItemWidget(
    this.conditionchipviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ConditionchipviewItemModel conditionchipviewItemModelObj;

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
            conditionchipviewItemModelObj.brandNew!.value,
            style: TextStyle(
              color: appTheme.gray900,
              fontSize: 14.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: (conditionchipviewItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.gray900.withOpacity(0.2),
          shape: (conditionchipviewItemModelObj.isSelected?.value ?? false)
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
            conditionchipviewItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
