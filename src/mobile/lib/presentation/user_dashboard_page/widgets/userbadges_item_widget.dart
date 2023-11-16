import '../models/userbadges_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';

// ignore: must_be_immutable
class UserbadgesItemWidget extends StatelessWidget {
  UserbadgesItemWidget(
    this.userbadgesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserbadgesItemModel userbadgesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 12.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          userbadgesItemModelObj.talent!.value,
          style: TextStyle(
            color: appTheme.whiteA700,
            fontSize: 14.fSize,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (userbadgesItemModelObj.isSelected?.value ?? false),
        backgroundColor: theme.colorScheme.primary,
        selectedColor: theme.colorScheme.primary,
        shape: (userbadgesItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.whiteA700.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
        onSelected: (value) {
          userbadgesItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
