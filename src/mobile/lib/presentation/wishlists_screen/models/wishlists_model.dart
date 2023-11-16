import 'productisnolonger2_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [wishlists_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WishlistsModel {
  Rx<List<Productisnolonger2ItemModel>> productisnolonger2ItemList = Rx([
    Productisnolonger2ItemModel(groupBy: "Product is no longer Available".obs),
    Productisnolonger2ItemModel(groupBy: "Product is no longer Available".obs),
    Productisnolonger2ItemModel(groupBy: "Product is no longer Available".obs)
  ]);
}
