import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  //sin el guión delante es publica la clase
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //   route: 'home',
    //   name: 'Home Screen',
    //   screen: const HomeScreen(),
    //   icon: Icons.home_max_sharp,
    // ),
    MenuOption(
      route: 'listview1',
      name: 'List View 1 Screen',
      screen: const Listview1Screen(),
      icon: Icons.list,
    ),
    MenuOption(
        route: 'listview2',
        name: 'List View 2 Screen',
        screen: const Listview2Screen(),
        icon: Icons.list_alt),
    MenuOption(
      route: 'alert',
      name: 'Alertas - Alert',
      screen: const AlertScreen(),
      icon: Icons.add_alert,
    ),
    MenuOption(
      route: 'card',
      name: 'Tarjetas - Card',
      screen: const CardScreen(),
      icon: Icons.credit_card,
    ),
    MenuOption(
      route: 'avatar',
      name: 'Circle Avatar',
      screen: const AvatarScreen(),
      icon: Icons.face,
    ),

    MenuOption(
      route: 'animated',
      name: 'Animated Container',
      screen: const AnimatedScreen(),
      icon: Icons.animation,
    ),
    MenuOption(
      route: 'input',
      name: 'Input Screen',
      screen: const InputScreen(),
      icon: Icons.text_fields,
    ),
    MenuOption(
      route: 'slider',
      name: 'Slider && Checks',
      screen: const SliderScreen(),
      icon: Icons.slideshow_rounded,
    ),
    MenuOption(
      route: 'listviewbuilder',
      name: 'InfiniteScroll & Pull to refresh',
      screen: const ListViewBuilderScreen(),
      icon: Icons.list,
    ),
    
    

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    //Por si la ruta no existe
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
