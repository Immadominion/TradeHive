import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/message_screen/models/message_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MessageScreen.
///
/// This class manages the state of the MessageScreen, including the
/// current messageModelObj
class MessageController extends GetxController {
  TextEditingController messageController = TextEditingController();

  Rx<MessageModel> messageModelObj = MessageModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageController.dispose();
  }
}
