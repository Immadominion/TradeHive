import '../controller/two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TwoScreen.
///
/// This class ensures that the TwoController is created when the
/// TwoScreen is first loaded.
class TwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwoController());
  }
}
