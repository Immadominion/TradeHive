import '../controller/hivewelcomescreen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HivewelcomescreenScreen.
///
/// This class ensures that the HivewelcomescreenController is created when the
/// HivewelcomescreenScreen is first loaded.
class HivewelcomescreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HivewelcomescreenController());
  }
}
