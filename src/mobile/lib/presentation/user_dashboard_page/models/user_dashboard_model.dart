import '../../../core/app_export.dart';
import 'userdashboard_item_model.dart';
import 'userbadges_item_model.dart';

/// This class defines the variables used in the [user_dashboard_page],
/// and is typically used to hold data that is passed between different parts of the application.
class UserDashboardModel {
  Rx<List<UserdashboardItemModel>> userdashboardItemList = Rx([
    UserdashboardItemModel(
        image: ImageConstant.imgUnsplashOb2aeee8s4a.obs,
        newBalanceClassic: "New Balance Classic Unisex Sneakers".obs,
        obafemiAwolowo: "Obafemi Awolowo University".obs,
        price: "₦7000".obs),
    UserdashboardItemModel(
        image: ImageConstant.imgUnsplashOb2aeee8s4a2.obs,
        newBalanceClassic: "New Balance Classic Unisex Sneakers".obs,
        obafemiAwolowo: "Obafemi Awolowo University".obs,
        price: "₦7000".obs)
  ]);

  Rx<List<UserbadgesItemModel>> userbadgesItemList =
      Rx(List.generate(4, (index) => UserbadgesItemModel()));
}
