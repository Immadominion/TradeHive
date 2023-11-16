import '../../../core/app_export.dart';

/// This class is used in the [notifications_item_widget] screen.
class NotificationsItemModel {
  NotificationsItemModel({
    this.image,
    this.duration,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgRefresh);
    duration = duration ?? Rx("2 hours ago");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? duration;

  Rx<String>? id;
}
