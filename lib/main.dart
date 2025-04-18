import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:sugiantoro/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Law Office Sugiantoro & Associates',
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          // useMaterial3: true,
          // primarySwatch: Colors.blue,
          primaryColor: const Color(0xFFC45238),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFFC45238),
          ),
          pageTransitionsTheme: PageTransitionsTheme(
            builders: kIsWeb
                ? {
                    for (final platform in TargetPlatform.values)
                      platform: const NoTransitionsBuilder(),
                  }
                : const {
                    // handle other platforms you are targeting
                  },
          )),
      routerConfig: AppRouter.router,
    );
  }
}

class NoTransitionsBuilder extends PageTransitionsBuilder {
  const NoTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext? context,
    Animation animation,
    Animation secondaryAnimation,
    Widget? child,
  ) {
    return child!;
  }
}
