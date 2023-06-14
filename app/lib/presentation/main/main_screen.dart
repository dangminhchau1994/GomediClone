import 'package:app/application/theme/ui_color.dart';
import 'package:app/application/widgets/ui_app_bar.dart';
import 'package:app/presentation/home/home_screen.dart';
import 'package:app/presentation/map/map_screen.dart';
import 'package:app/presentation/more/more_screen.dart';
import 'package:app/presentation/my_medications/my_medications_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../gen/assets.gen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PersistentTabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UIAppbar(
        showBadge: true,
      ),
      body: PersistentTabView(
        context,
        controller: _tabController,
        screens: _buildScreens,
        items: _navBarsItems,
        confineInSafeArea: true,
        navBarHeight: 70,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.simple, // Choose the nav bar style with this property.
      ),
    );
  }

  final _buildScreens = [
    const HomeScreen(),
    const MyMedicationScreen(),
    const MapScreen(),
    const MoreScreen(),
  ];

  final _navBarsItems = [
    PersistentBottomNavBarItem(
      title: 'Pulpit',
      inactiveColorPrimary: Colors.black,
      activeColorPrimary: UIColors.blue,
      inactiveIcon: SvgPicture.asset(
        Assets.images.bottomNavBarHome,
        fit: BoxFit.cover,
      ),
      icon: SvgPicture.asset(
        Assets.images.bottomNavBarHomeFilled,
        fit: BoxFit.cover,
      ),
    ),
    PersistentBottomNavBarItem(
      title: 'My medications',
      inactiveColorPrimary: Colors.black,
      activeColorPrimary: UIColors.blue,
      inactiveIcon: SvgPicture.asset(
        Assets.images.bottomNavBarPill,
        fit: BoxFit.cover,
      ),
      icon: SvgPicture.asset(
        Assets.images.bottomNavBarPillFilled,
        fit: BoxFit.cover,
      ),
    ),
    PersistentBottomNavBarItem(
      title: 'Map',
      inactiveColorPrimary: Colors.black,
      activeColorPrimary: UIColors.blue,
      inactiveIcon: SvgPicture.asset(
        Assets.images.bottomNavBarMap,
        fit: BoxFit.cover,
      ),
      icon: SvgPicture.asset(
        Assets.images.bottomNavBarMapFilled,
        fit: BoxFit.cover,
      ),
    ),
    PersistentBottomNavBarItem(
      title: 'More',
      inactiveColorPrimary: Colors.black,
      activeColorPrimary: UIColors.blue,
      inactiveIcon: SvgPicture.asset(
        Assets.images.bottomNavBarMore,
        fit: BoxFit.cover,
      ),
      icon: SvgPicture.asset(
        Assets.images.bottomNavBarMoreFilled,
        fit: BoxFit.cover,
      ),
    )
  ];
}
