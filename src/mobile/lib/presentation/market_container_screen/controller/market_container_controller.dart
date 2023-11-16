import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/market_container_screen/models/market_container_model.dart';

/// A controller class for the MarketContainerScreen.
///
/// This class manages the state of the MarketContainerScreen, including the
/// current marketContainerModelObj
class MarketContainerController extends GetxController {
  Rx<MarketContainerModel> marketContainerModelObj = MarketContainerModel().obs;
}
