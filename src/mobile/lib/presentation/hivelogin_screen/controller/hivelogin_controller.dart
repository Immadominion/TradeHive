import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/hivelogin_screen/models/hivelogin_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HiveloginScreen.
///
/// This class manages the state of the HiveloginScreen, including the
/// current hiveloginModelObj
class HiveloginController extends GetxController {
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<HiveloginModel> hiveloginModelObj = HiveloginModel().obs;

  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    passwordController.dispose();
  }
}
