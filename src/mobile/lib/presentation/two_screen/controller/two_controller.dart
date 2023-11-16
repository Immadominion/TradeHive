import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/two_screen/models/two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TwoScreen.
///
/// This class manages the state of the TwoScreen, including the
/// current twoModelObj
class TwoController extends GetxController {
  TextEditingController emailEditTextController = TextEditingController();

  Rx<TwoModel> twoModelObj = TwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailEditTextController.dispose();
  }
}
