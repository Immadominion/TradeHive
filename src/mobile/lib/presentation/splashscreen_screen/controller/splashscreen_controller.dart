import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/splashscreen_screen/models/splashscreen_model.dart';

/// A controller class for the SplashscreenScreen.
///
/// This class manages the state of the SplashscreenScreen, including the
/// current splashscreenModelObj
class SplashscreenController extends GetxController {
  Rx<SplashscreenModel> splashscreenModelObj = SplashscreenModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.hivewelcomescreenScreen,
      );
    });
  }
}
