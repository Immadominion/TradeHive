import '../controller/hivelogin_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HiveloginScreen.
///
/// This class ensures that the HiveloginController is created when the
/// HiveloginScreen is first loaded.
class HiveloginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HiveloginController());
  }
}
