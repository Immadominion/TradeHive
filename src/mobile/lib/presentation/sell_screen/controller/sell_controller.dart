import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/sell_screen/models/sell_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SellScreen.
///
/// This class manages the state of the SellScreen, including the
/// current sellModelObj
class SellController extends GetxController {
  TextEditingController titleEditTextController = TextEditingController();

  TextEditingController descriptionEditTextController = TextEditingController();

  TextEditingController playEditTextController = TextEditingController();

  TextEditingController conditionEditTextController = TextEditingController();

  TextEditingController playEditTextController1 = TextEditingController();

  TextEditingController playEditTextController2 = TextEditingController();

  TextEditingController languageEditTextController = TextEditingController();

  Rx<SellModel> sellModelObj = SellModel().obs;

  Rx<bool> negotiableCheckBox = false.obs;

  @override
  void onClose() {
    super.onClose();
    titleEditTextController.dispose();
    descriptionEditTextController.dispose();
    playEditTextController.dispose();
    conditionEditTextController.dispose();
    playEditTextController1.dispose();
    playEditTextController2.dispose();
    languageEditTextController.dispose();
  }
}
