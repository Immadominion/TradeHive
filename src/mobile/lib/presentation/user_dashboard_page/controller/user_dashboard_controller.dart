import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/user_dashboard_page/models/user_dashboard_model.dart';

/// A controller class for the UserDashboardPage.
///
/// This class manages the state of the UserDashboardPage, including the
/// current userDashboardModelObj
class UserDashboardController extends GetxController {
  UserDashboardController(this.userDashboardModelObj);

  Rx<UserDashboardModel> userDashboardModelObj;
}
