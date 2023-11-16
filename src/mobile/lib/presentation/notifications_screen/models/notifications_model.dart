import '../../../core/app_export.dart';
import 'notifications_item_model.dart';

/// This class defines the variables used in the [notifications_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsModel {
  Rx<List<NotificationsItemModel>> notificationsItemList = Rx([
    NotificationsItemModel(
        image: ImageConstant.imgRefresh.obs, duration: "2 hours ago".obs),
    NotificationsItemModel(
        image: ImageConstant.imgThumbsUp.obs, duration: "2 hours ago".obs),
    NotificationsItemModel(
        image: ImageConstant.imgRefresh.obs, duration: "2 hours ago".obs),
    NotificationsItemModel(
        image: ImageConstant.imgVuesaxBoldStar.obs,
        duration: "2 hours ago".obs),
    NotificationsItemModel(
        image: ImageConstant.imgRefresh.obs, duration: "2 hours ago".obs)
  ]);
}
