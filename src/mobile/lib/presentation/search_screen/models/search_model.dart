import '../../../core/app_export.dart';
import 'searchlist_item_model.dart';

/// This class defines the variables used in the [search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel {
  Rx<List<SearchlistItemModel>> searchlistItemList = Rx([
    SearchlistItemModel(
        recentSearch: "Recent search".obs, seeAll: "See all".obs),
    SearchlistItemModel(recentSearch: "Biology Textbook".obs),
    SearchlistItemModel(recentSearch: "Biology Textbook".obs),
    SearchlistItemModel(recentSearch: "Biology Textbook".obs),
    SearchlistItemModel(recentSearch: "Biology Textbook".obs)
  ]);
}
