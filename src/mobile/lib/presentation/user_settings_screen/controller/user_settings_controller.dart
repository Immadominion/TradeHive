import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/user_settings_screen/models/user_settings_model.dart';

/// A controller class for the UserSettingsScreen.
///
/// This class manages the state of the UserSettingsScreen, including the
/// current userSettingsModelObj
class UserSettingsController extends GetxController {
  Rx<UserSettingsModel> userSettingsModelObj = UserSettingsModel().obs;
}
