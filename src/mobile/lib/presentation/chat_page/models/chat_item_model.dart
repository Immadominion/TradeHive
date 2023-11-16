import '../../../core/app_export.dart';

/// This class is used in the [chat_item_widget] screen.
class ChatItemModel {
  ChatItemModel({
    this.adejohMoses,
    this.time,
    this.obafemiAwolowo,
    this.thanksforthepatronage,
    this.id,
  }) {
    adejohMoses = adejohMoses ?? Rx("Adejoh Moses");
    time = time ?? Rx("6:07 PM");
    obafemiAwolowo = obafemiAwolowo ?? Rx("Obafemi Awolowo University");
    thanksforthepatronage =
        thanksforthepatronage ?? Rx("Thanks for the patronage");
    id = id ?? Rx("");
  }

  Rx<String>? adejohMoses;

  Rx<String>? time;

  Rx<String>? obafemiAwolowo;

  Rx<String>? thanksforthepatronage;

  Rx<String>? id;
}
