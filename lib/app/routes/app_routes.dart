import 'package:go_router/go_router.dart';
import '../startup/onsplash.dart';
import '../startup/welcome.dart';

abstract class AppRoutes {
  static const splash = '/splash';
  static const welcome = '/welcome';

  static final routes = [
    GoRoute(
      path: splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: welcome,
      builder: (context, state) => const WelcomeScreen(),
    ),
  ];
}
