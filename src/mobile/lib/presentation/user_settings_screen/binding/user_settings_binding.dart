import '../controller/user_settings_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UserSettingsScreen.
///
/// This class ensures that the UserSettingsController is created when the
/// UserSettingsScreen is first loaded.
class UserSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserSettingsController());
  }
}
