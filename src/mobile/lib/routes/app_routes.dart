import 'package:tradehive/presentation/hivewelcomescreen_screen/hivewelcomescreen_screen.dart';
import 'package:tradehive/presentation/hivewelcomescreen_screen/binding/hivewelcomescreen_binding.dart';
import 'package:tradehive/presentation/hivelogin_screen/hivelogin_screen.dart';
import 'package:tradehive/presentation/hivelogin_screen/binding/hivelogin_binding.dart';
import 'package:tradehive/presentation/five_screen/five_screen.dart';
import 'package:tradehive/presentation/five_screen/binding/five_binding.dart';
import 'package:tradehive/presentation/two_screen/two_screen.dart';
import 'package:tradehive/presentation/two_screen/binding/two_binding.dart';
import 'package:tradehive/presentation/market_container_screen/market_container_screen.dart';
import 'package:tradehive/presentation/market_container_screen/binding/market_container_binding.dart';
import 'package:tradehive/presentation/listing_details_screen/listing_details_screen.dart';
import 'package:tradehive/presentation/listing_details_screen/binding/listing_details_binding.dart';
import 'package:tradehive/presentation/search_screen/search_screen.dart';
import 'package:tradehive/presentation/search_screen/binding/search_binding.dart';
import 'package:tradehive/presentation/filter_one_screen/filter_one_screen.dart';
import 'package:tradehive/presentation/filter_one_screen/binding/filter_one_binding.dart';
import 'package:tradehive/presentation/message_screen/message_screen.dart';
import 'package:tradehive/presentation/message_screen/binding/message_binding.dart';
import 'package:tradehive/presentation/user_settings_screen/user_settings_screen.dart';
import 'package:tradehive/presentation/user_settings_screen/binding/user_settings_binding.dart';
import 'package:tradehive/presentation/notifications_screen/notifications_screen.dart';
import 'package:tradehive/presentation/notifications_screen/binding/notifications_binding.dart';
import 'package:tradehive/presentation/sell_screen/sell_screen.dart';
import 'package:tradehive/presentation/sell_screen/binding/sell_binding.dart';
import 'package:tradehive/presentation/splashscreen_screen/splashscreen_screen.dart';
import 'package:tradehive/presentation/splashscreen_screen/binding/splashscreen_binding.dart';
import 'package:tradehive/presentation/wishlists_screen/wishlists_screen.dart';
import 'package:tradehive/presentation/wishlists_screen/binding/wishlists_binding.dart';
import 'package:tradehive/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:tradehive/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String hivewelcomescreenScreen = '/hivewelcomescreen_screen';

  static const String marketOnePage = '/market_one_page';

  static const String hiveloginScreen = '/hivelogin_screen';

  static const String fiveScreen = '/five_screen';

  static const String twoScreen = '/two_screen';

  static const String marketPage = '/market_page';

  static const String marketTabContainerPage = '/market_tab_container_page';

  static const String marketContainerScreen = '/market_container_screen';

  static const String listingDetailsScreen = '/listing_details_screen';

  static const String searchScreen = '/search_screen';

  static const String filterOneScreen = '/filter_one_screen';

  static const String chatPage = '/chat_page';

  static const String messageScreen = '/message_screen';

  static const String wishlistsOnePage = '/wishlists_one_page';

  static const String userDashboardPage = '/user_dashboard_page';

  static const String userSettingsScreen = '/user_settings_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String filterPage = '/filter_page';

  static const String sellScreen = '/sell_screen';

  static const String splashscreenScreen = '/splashscreen_screen';

  static const String wishlistsScreen = '/wishlists_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: hivewelcomescreenScreen,
      page: () => HivewelcomescreenScreen(),
      bindings: [
        HivewelcomescreenBinding(),
      ],
    ),
    GetPage(
      name: hiveloginScreen,
      page: () => HiveloginScreen(),
      bindings: [
        HiveloginBinding(),
      ],
    ),
    GetPage(
      name: fiveScreen,
      page: () => FiveScreen(),
      bindings: [
        FiveBinding(),
      ],
    ),
    GetPage(
      name: twoScreen,
      page: () => TwoScreen(),
      bindings: [
        TwoBinding(),
      ],
    ),
    GetPage(
      name: marketContainerScreen,
      page: () => MarketContainerScreen(),
      bindings: [
        MarketContainerBinding(),
      ],
    ),
    GetPage(
      name: listingDetailsScreen,
      page: () => ListingDetailsScreen(),
      bindings: [
        ListingDetailsBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: filterOneScreen,
      page: () => FilterOneScreen(),
      bindings: [
        FilterOneBinding(),
      ],
    ),
    GetPage(
      name: messageScreen,
      page: () => MessageScreen(),
      bindings: [
        MessageBinding(),
      ],
    ),
    GetPage(
      name: userSettingsScreen,
      page: () => UserSettingsScreen(),
      bindings: [
        UserSettingsBinding(),
      ],
    ),
    GetPage(
      name: notificationsScreen,
      page: () => NotificationsScreen(),
      bindings: [
        NotificationsBinding(),
      ],
    ),
    GetPage(
      name: sellScreen,
      page: () => SellScreen(),
      bindings: [
        SellBinding(),
      ],
    ),
    GetPage(
      name: splashscreenScreen,
      page: () => SplashscreenScreen(),
      bindings: [
        SplashscreenBinding(),
      ],
    ),
    GetPage(
      name: wishlistsScreen,
      page: () => WishlistsScreen(),
      bindings: [
        WishlistsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashscreenScreen(),
      bindings: [
        SplashscreenBinding(),
      ],
    )
  ];
}
