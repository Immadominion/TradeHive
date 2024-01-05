import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../market_one_page/widgets/marketone_item_widget.dart';
import 'controller/market_one_controller.dart';
import 'models/market_one_model.dart';
import 'models/marketone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';

class MarketOnePage extends StatelessWidget {
  MarketOnePage({Key? key})
      : super(
          key: key,
        );

  MarketOneController controller =
      Get.put(MarketOneController(MarketOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 35.sp),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21.h),
                  child: Obx(
                    () => GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 265.sp,
                        crossAxisCount: 2,
                        mainAxisSpacing: 11.h,
                        crossAxisSpacing: 11.h,
                      ),
                      physics: BouncingScrollPhysics(),
                      itemCount: controller.marketOneModelObj.value
                          .marketoneItemList.value.length,
                      itemBuilder: (context, index) {
                        MarketoneItemModel model = controller.marketOneModelObj
                            .value.marketoneItemList.value[index];
                        return MarketoneItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
