import '../controller/sell_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SellScreen.
///
/// This class ensures that the SellController is created when the
/// SellScreen is first loaded.
class SellBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SellController());
  }
}
