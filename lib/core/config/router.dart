import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_management/feature/auth/pages/login_page.dart';
import 'package:project_management/feature/auth/pages/signup_page.dart';
import 'package:project_management/feature/order/pages/join_project.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return LogIn();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'joinproject',
            builder: (context, state) => JoinOrCreateProject(),
            // routes: <RouteBase>[
            //   GoRoute(
            //     path: 'showtable',
            //     builder: (context, state) => ShowTable(),
            //   ),
            // ]),
          ),
        ]),
  ],
);
