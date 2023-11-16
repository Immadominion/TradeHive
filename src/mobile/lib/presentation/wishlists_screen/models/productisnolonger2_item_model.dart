import '../../../core/app_export.dart';

/// This class is used in the [productisnolonger2_item_widget] screen.
class Productisnolonger2ItemModel {
  Productisnolonger2ItemModel({
    this.groupBy,
    this.id,
  }) {
    groupBy = groupBy ?? Rx("");
    id = id ?? Rx("");
  }

  Rx<String>? groupBy;

  Rx<String>? id;
}
