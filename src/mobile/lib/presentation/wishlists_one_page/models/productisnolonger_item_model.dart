import '../../../core/app_export.dart';

/// This class is used in the [productisnolonger_item_widget] screen.
class ProductisnolongerItemModel {
  ProductisnolongerItemModel({
    this.groupBy,
    this.id,
  }) {
    groupBy = groupBy ?? Rx("");
    id = id ?? Rx("");
  }

  Rx<String>? groupBy;

  Rx<String>? id;
}
