import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:multi_envs_flutter/pages/main_page.dart';

final GoRouter router = GoRouter(
  errorPageBuilder: (context, state) {
    return const MaterialPage(child: Text('Error'));
  },
  routes: [
    GoRoute(
      name: '/',
      path: '/',
      builder: (context, state) => const MainPage(),
    ),
  ],
);
