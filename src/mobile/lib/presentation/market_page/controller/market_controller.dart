import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/market_page/models/market_model.dart';

/// A controller class for the MarketPage.
///
/// This class manages the state of the MarketPage, including the
/// current marketModelObj
class MarketController extends GetxController {
  MarketController(this.marketModelObj);

  Rx<MarketModel> marketModelObj;
}
