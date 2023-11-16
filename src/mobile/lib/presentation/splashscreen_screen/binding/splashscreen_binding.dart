import '../controller/splashscreen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SplashscreenScreen.
///
/// This class ensures that the SplashscreenController is created when the
/// SplashscreenScreen is first loaded.
class SplashscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashscreenController());
  }
}
