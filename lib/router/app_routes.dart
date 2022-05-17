import 'package:flutter/material.dart';
import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes{

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    
    MenuOption(route: 'listview1', icon: Icons.list, name: 'ListView tipo 1', screen: const ListViewScreen()),
    MenuOption(route: 'listview2', icon: Icons.list_alt, name: 'ListView tipo 2', screen: const ListView2Screen()),
    MenuOption(route: 'alert', icon: Icons.add_alert_outlined, name: 'Alertas- Alerts', screen: const AlertScreen()),
    MenuOption(route: 'cards', icon: Icons.credit_card, name: 'Tarejetas - Cards', screen: const CardScreen()),
    MenuOption(route: 'avatar', icon: Icons.supervised_user_circle, name: 'Circle Avatar', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.play_arrow_outlined, name: 'Animated Container', screen: const AnimatedScreen()),
    MenuOption(route: 'inputs', icon: Icons.input_rounded, name: 'Text inputs', screen: const InputScreen()),
    MenuOption(route: 'slider', icon: Icons.slow_motion_video, name: 'Slider and Checks', screen: const SliderScreen()),
    MenuOption(route: 'listviewBuilder', icon: Icons.build_circle_outlined, name: 'InfiniteScroll && Pull to refresh', screen: const ListViewBuilderScreen())
    
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home' : ( BuildContext context ) => const HomeScreen() });
    
    for (final option in menuOptions){
      appRoutes.addAll({ option.route: (BuildContext context) => option.screen });
    }

    return appRoutes;
    
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home': ( BuildContext context ) => const HomeScreen(),
  //       'listview1':( BuildContext conext) => const ListViewScreen(),
  //       'listview2':( BuildContext conext) => const ListView2Screen(),
  //       'alert':( BuildContext conext) => const AlertScreen(),
  //       'cards':( BuildContext conext) => const CardScreen(),
  // };

  
  static Route<dynamic>onGenerateRoute(RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => const AlertScreen()
        );
  }

  
}
