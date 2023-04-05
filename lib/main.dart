import 'package:appbar/pagetest.dart';
import 'package:appbar/provider/provider_template1.dart';
import 'package:appbar/provider/provider_template2.dart';
import 'package:appbar/provider/provider_template3.dart';
import 'package:appbar/provider/provider_template4.dart';
import 'package:appbar/template_AppBar/template_1.dart';
import 'package:appbar/template_AppBar/template_2.dart';
import 'package:appbar/template_AppBar/template_3.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      name: 'accueil',
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return template_2();
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Provider1()),

        ChangeNotifierProvider(create: (context) => Provider2()),

        ChangeNotifierProvider(create: (context) => Provider3()),

        ChangeNotifierProvider(create: (context) => Provider4()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
