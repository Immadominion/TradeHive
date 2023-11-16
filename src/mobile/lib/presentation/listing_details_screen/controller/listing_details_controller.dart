import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/listing_details_screen/models/listing_details_model.dart';

/// A controller class for the ListingDetailsScreen.
///
/// This class manages the state of the ListingDetailsScreen, including the
/// current listingDetailsModelObj
class ListingDetailsController extends GetxController {
  Rx<ListingDetailsModel> listingDetailsModelObj = ListingDetailsModel().obs;

  Rx<bool> giveAReview = false.obs;
}
