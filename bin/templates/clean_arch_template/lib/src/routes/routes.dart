import 'package:clean_arch_template/src/presentation/pages/auth/example/example_page.dart';
import 'package:clean_arch_template/src/routes/routes_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        name: Routes.home,
        path: '/',
        builder: (context, state) => const ExamplePage(),
      ),

      // // If you want to want more control over the page transition, you can use the pageBuilder instead of the builder

      // GoRoute(
      //   name: MyAppRouteConstants.contactUsRouteName,
      //   path: '/contact_us',
      //   pageBuilder: (context, state) {
      //     return MaterialPage(child: ContactUS());
      //   },
      // )
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(key: state.pageKey, child: const ExamplePage());
    },
  );
  GoRouter get router => _router;
}
