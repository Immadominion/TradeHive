import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/search_controller.dart';
import '../models/searchlist_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:tradehive/core/app_export.dart';

// ignore: must_be_immutable
class SearchlistItemWidget extends StatelessWidget {
  SearchlistItemWidget(
    this.searchlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchlistItemModel searchlistItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => Text(
            searchlistItemModelObj.recentSearch!.value,
            style: theme.textTheme.titleSmall,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 186.h,
            bottom: 2.sp,
          ),
          child: Obx(
            () => Text(
              searchlistItemModelObj.seeAll!.value,
              style: CustomTextStyles.labelLargeInter_1,
            ),
          ),
        ),
      ],
    );
  }
}
