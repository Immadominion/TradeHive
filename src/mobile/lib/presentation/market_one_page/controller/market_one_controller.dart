import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/market_one_page/models/market_one_model.dart';

/// A controller class for the MarketOnePage.
///
/// This class manages the state of the MarketOnePage, including the
/// current marketOneModelObj
class MarketOneController extends GetxController {
  MarketOneController(this.marketOneModelObj);

  Rx<MarketOneModel> marketOneModelObj;
}
