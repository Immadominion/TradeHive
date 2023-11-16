import '../controller/listing_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ListingDetailsScreen.
///
/// This class ensures that the ListingDetailsController is created when the
/// ListingDetailsScreen is first loaded.
class ListingDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ListingDetailsController());
  }
}
