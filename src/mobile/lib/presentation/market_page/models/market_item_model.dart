import '../../../core/app_export.dart';

/// This class is used in the [market_item_widget] screen.
class MarketItemModel {
  MarketItemModel({
    this.image,
    this.newBalanceClassic,
    this.obafemiAwolowo,
    this.price,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgUnsplashOb2aeee8s4a);
    newBalanceClassic =
        newBalanceClassic ?? Rx("New Balance Classic Unisex Sneakers");
    obafemiAwolowo = obafemiAwolowo ?? Rx("Obafemi Awolowo University");
    price = price ?? Rx("₦7000");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? newBalanceClassic;

  Rx<String>? obafemiAwolowo;

  Rx<String>? price;

  Rx<String>? id;
}
