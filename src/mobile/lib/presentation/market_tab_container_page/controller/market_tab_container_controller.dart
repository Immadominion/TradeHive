import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/market_tab_container_page/models/market_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MarketTabContainerPage.
///
/// This class manages the state of the MarketTabContainerPage, including the
/// current marketTabContainerModelObj
class MarketTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  MarketTabContainerController(this.marketTabContainerModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<MarketTabContainerModel> marketTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
