import '../controller/filter_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FilterOneScreen.
///
/// This class ensures that the FilterOneController is created when the
/// FilterOneScreen is first loaded.
class FilterOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FilterOneController());
  }
}
