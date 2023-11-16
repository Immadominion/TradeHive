import '../../../core/app_export.dart';

/// This class is used in the [pricechipview_item_widget] screen.
class PricechipviewItemModel {
  Rx<String>? lowestPrice = Rx("Lowest Price");

  Rx<bool>? isSelected = Rx(false);
}
