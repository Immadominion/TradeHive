import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/hivewelcomescreen_screen/models/hivewelcomescreen_model.dart';

/// A controller class for the HivewelcomescreenScreen.
///
/// This class manages the state of the HivewelcomescreenScreen, including the
/// current hivewelcomescreenModelObj
class HivewelcomescreenController extends GetxController {
  Rx<HivewelcomescreenModel> hivewelcomescreenModelObj =
      HivewelcomescreenModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      // Get.offNamed(
      //   AppRoutes.splashscreenScreen,
      // );
    });
  }
}
