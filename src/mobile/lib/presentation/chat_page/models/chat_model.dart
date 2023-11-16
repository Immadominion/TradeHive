import '../../../core/app_export.dart';
import 'chat_item_model.dart';

/// This class defines the variables used in the [chat_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ChatModel {
  Rx<List<ChatItemModel>> chatItemList = Rx([
    ChatItemModel(
        adejohMoses: "Adejoh Moses".obs,
        time: "6:07 PM".obs,
        obafemiAwolowo: "Obafemi Awolowo University".obs,
        thanksforthepatronage: "Thanks for the patronage".obs),
    ChatItemModel(
        adejohMoses: "Adejoh Moses".obs,
        time: "6:07 PM".obs,
        obafemiAwolowo: "Obafemi Awolowo University".obs,
        thanksforthepatronage: "Thanks for the patronage".obs),
    ChatItemModel(
        adejohMoses: "Adejoh Moses".obs,
        time: "6:07 PM".obs,
        obafemiAwolowo: "Obafemi Awolowo University".obs,
        thanksforthepatronage: "Thanks for the patronage".obs),
    ChatItemModel(
        adejohMoses: "Adejoh Moses".obs,
        time: "6:07 PM".obs,
        obafemiAwolowo: "Obafemi Awolowo University".obs,
        thanksforthepatronage: "Thanks for the patronage".obs),
    ChatItemModel(
        adejohMoses: "Adejoh Moses".obs,
        time: "6:07 PM".obs,
        obafemiAwolowo: "Obafemi Awolowo University".obs,
        thanksforthepatronage: "Thanks for the patronage".obs)
  ]);
}
