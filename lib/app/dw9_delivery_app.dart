import 'package:flutter/material.dart';

import 'core/provider/application_binding.dart';
import 'core/ui/theme/theme_config.dart';
import 'pages/home/home_router.dart';
import 'pages/splash/splash_page.dart';

class Dw9DeliveryApp extends StatelessWidget {
  const Dw9DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        title: 'Vakinha Delivery',
        theme: ThemeConfig.theme,
        routes: {
          '/': (context) => SplashPage(),
          '/home': (context) => HomeRouter.page,
        },
      ),
    );
  }
}
