import 'controller/market_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:tradehive/core/app_export.dart';
import 'package:tradehive/presentation/chat_page/chat_page.dart';
import 'package:tradehive/presentation/filter_page/filter_page.dart';
import 'package:tradehive/presentation/market_tab_container_page/market_tab_container_page.dart';
import 'package:tradehive/presentation/user_dashboard_page/user_dashboard_page.dart';
import 'package:tradehive/presentation/wishlists_one_page/wishlists_one_page.dart';
import 'package:tradehive/widgets/custom_bottom_bar.dart';

class MarketContainerScreen extends GetWidget<MarketContainerController> {
  const MarketContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.marketTabContainerPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Market:
        return AppRoutes.marketTabContainerPage;
      case BottomBarEnum.Messages:
        return AppRoutes.chatPage;
      case BottomBarEnum.Sell:
        return AppRoutes.filterPage;
      case BottomBarEnum.Wishlists:
        return AppRoutes.wishlistsOnePage;
      case BottomBarEnum.Profile:
        return AppRoutes.userDashboardPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.marketTabContainerPage:
        return MarketTabContainerPage();
      case AppRoutes.chatPage:
        return ChatPage();
      case AppRoutes.filterPage:
        return FilterPage();
      case AppRoutes.wishlistsOnePage:
        return WishlistsOnePage();
      case AppRoutes.userDashboardPage:
        return UserDashboardPage();
      default:
        return DefaultWidget();
    }
  }
}
