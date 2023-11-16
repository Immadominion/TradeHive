import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/wishlists_one_page/models/wishlists_one_model.dart';

/// A controller class for the WishlistsOnePage.
///
/// This class manages the state of the WishlistsOnePage, including the
/// current wishlistsOneModelObj
class WishlistsOneController extends GetxController {
  WishlistsOneController(this.wishlistsOneModelObj);

  Rx<WishlistsOneModel> wishlistsOneModelObj;
}
