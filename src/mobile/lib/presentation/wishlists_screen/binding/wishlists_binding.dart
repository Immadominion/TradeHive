import '../controller/wishlists_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WishlistsScreen.
///
/// This class ensures that the WishlistsController is created when the
/// WishlistsScreen is first loaded.
class WishlistsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WishlistsController());
  }
}
