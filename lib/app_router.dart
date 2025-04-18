import 'package:go_router/go_router.dart';
import 'screens/about_page.dart';
import 'screens/contact_page.dart';
import 'screens/home_page.dart';
import 'widgets/main_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MainScreen(child: HomePage()),
      ),
      GoRoute(
        path: '/about',
        builder: (context, state) => const MainScreen(child: AboutPage()),
      ),
      GoRoute(
        path: '/contact',
        builder: (context, state) => const MainScreen(child: ContactPage()),
      ),
    ],
  );
}
