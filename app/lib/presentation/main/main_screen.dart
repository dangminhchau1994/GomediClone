import 'package:app/application/blocs/profile/profile_bloc.dart';
import 'package:app/application/blocs/profile/profile_event.dart';
import 'package:app/application/theme/ui_color.dart';
import 'package:app/di/service_locator.dart';
import 'package:app/domain/profile/i_profile_repository.dart';
import 'package:app/presentation/home/home_screen.dart';
import 'package:app/presentation/map/map_screen.dart';
import 'package:app/presentation/more/more_screen.dart';
import 'package:app/presentation/my_medications/my_medications_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ProfileBloc(
              getIt<IProfileRepository>(),
            )..add(const ProfileEvent.getProfile()),
          ),
        ],
        child: PersistentTabView(
          context,
          controller: _tabController,
          navBarHeight: 70,
          screens: _buildScreens,
          items: _navBarsItems,
          navBarStyle: NavBarStyle
              .simple, // Choose the nav bar style with this property.
        ),
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
