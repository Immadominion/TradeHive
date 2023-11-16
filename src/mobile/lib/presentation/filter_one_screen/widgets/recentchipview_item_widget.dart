import '../models/recentchipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';

// ignore: must_be_immutable
class RecentchipviewItemWidget extends StatelessWidget {
  RecentchipviewItemWidget(
    this.recentchipviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RecentchipviewItemModel recentchipviewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 9.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            recentchipviewItemModelObj.recent!.value,
            style: TextStyle(
              color: (recentchipviewItemModelObj.isSelected?.value ?? false)
                  ? appTheme.whiteA700
                  : appTheme.gray900,
              fontSize: 14.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: (recentchipviewItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: theme.colorScheme.primary,
          shape: (recentchipviewItemModelObj.isSelected?.value ?? false)
              ? RoundedRectangleBorder(
                  side: BorderSide.none,
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
            recentchipviewItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
