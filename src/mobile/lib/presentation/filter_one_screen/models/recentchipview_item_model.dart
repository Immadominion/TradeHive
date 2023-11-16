import '../../../core/app_export.dart';

/// This class is used in the [recentchipview_item_widget] screen.
class RecentchipviewItemModel {
  Rx<String>? recent = Rx("Recent");

  Rx<bool>? isSelected = Rx(false);
}
