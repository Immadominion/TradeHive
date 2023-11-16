import 'package:tradehive/data/models/selectionPopupModel/selection_popup_model.dart';
import 'recentchipview_item_model.dart';
import 'pricechipview_item_model.dart';
import 'conditionchipview_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [filter_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterOneModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<RecentchipviewItemModel>> recentchipviewItemList =
      Rx(List.generate(4, (index) => RecentchipviewItemModel()));

  Rx<List<PricechipviewItemModel>> pricechipviewItemList =
      Rx(List.generate(2, (index) => PricechipviewItemModel()));

  Rx<List<ConditionchipviewItemModel>> conditionchipviewItemList =
      Rx(List.generate(4, (index) => ConditionchipviewItemModel()));
}
