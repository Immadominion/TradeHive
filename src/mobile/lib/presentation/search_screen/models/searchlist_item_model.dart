import '../../../core/app_export.dart';

/// This class is used in the [searchlist_item_widget] screen.
class SearchlistItemModel {
  SearchlistItemModel({
    this.recentSearch,
    this.seeAll,
    this.id,
  }) {
    recentSearch = recentSearch ?? Rx("Recent search");
    seeAll = seeAll ?? Rx("See all");
    id = id ?? Rx("");
  }

  Rx<String>? recentSearch;

  Rx<String>? seeAll;

  Rx<String>? id;
}
