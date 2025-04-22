import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:magh/main.dart';


class AppRoutes {
  static GoRouter get routes {
    return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
        ),
      ],
    );
  }
}
