import '../market_page/widgets/market_item_widget.dart';
import 'controller/market_controller.dart';
import 'models/market_item_model.dart';
import 'models/market_model.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MarketPage extends StatelessWidget {
  MarketPage({Key? key}) : super(key: key);

  MarketController controller = Get.put(MarketController(MarketModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Column(children: [
                  SizedBox(height: 16.v),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 21.h),
                          child: Obx(() => GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: 265.v,
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 11.h,
                                      crossAxisSpacing: 11.h),
                              physics: BouncingScrollPhysics(),
                              itemCount: controller.marketModelObj.value
                                  .marketItemList.value.length,
                              itemBuilder: (context, index) {
                                MarketItemModel model = controller
                                    .marketModelObj
                                    .value
                                    .marketItemList
                                    .value[index];
                                return MarketItemWidget(model, onTapFrame: () {
                                  onTapFrame();
                                });
                              }))))
                ]))));
  }

  /// Navigates to the listingDetailsScreen when the action is triggered.
  onTapFrame() {
    Get.toNamed(
      AppRoutes.listingDetailsScreen,
    );
  }
}
