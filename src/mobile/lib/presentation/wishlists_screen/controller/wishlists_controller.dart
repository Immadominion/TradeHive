import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/wishlists_screen/models/wishlists_model.dart';

/// A controller class for the WishlistsScreen.
///
/// This class manages the state of the WishlistsScreen, including the
/// current wishlistsModelObj
class WishlistsController extends GetxController {
  Rx<WishlistsModel> wishlistsModelObj = WishlistsModel().obs;
}
