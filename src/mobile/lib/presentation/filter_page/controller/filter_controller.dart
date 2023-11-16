import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/filter_page/models/filter_model.dart';

/// A controller class for the FilterPage.
///
/// This class manages the state of the FilterPage, including the
/// current filterModelObj
class FilterController extends GetxController {
  FilterController(this.filterModelObj);

  Rx<FilterModel> filterModelObj;
}
