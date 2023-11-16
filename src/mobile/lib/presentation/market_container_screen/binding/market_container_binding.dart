import '../controller/market_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MarketContainerScreen.
///
/// This class ensures that the MarketContainerController is created when the
/// MarketContainerScreen is first loaded.
class MarketContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MarketContainerController());
  }
}
