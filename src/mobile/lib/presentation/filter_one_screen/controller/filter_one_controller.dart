import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/filter_one_screen/models/filter_one_model.dart';

/// A controller class for the FilterOneScreen.
///
/// This class manages the state of the FilterOneScreen, including the
/// current filterOneModelObj
class FilterOneController extends GetxController {
  Rx<FilterOneModel> filterOneModelObj = FilterOneModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  onSelected(dynamic value) {
    for (var element in filterOneModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    filterOneModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in filterOneModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    filterOneModelObj.value.dropdownItemList1.refresh();
  }
}
