import 'productisnolonger_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [wishlists_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class WishlistsOneModel {
  Rx<List<ProductisnolongerItemModel>> productisnolongerItemList = Rx([
    ProductisnolongerItemModel(groupBy: "Product is no longer Available".obs),
    ProductisnolongerItemModel(groupBy: "Product is no longer Available".obs),
    ProductisnolongerItemModel(groupBy: "Product is no longer Available".obs)
  ]);
}
