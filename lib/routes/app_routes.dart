import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:magh/features/home/presentation/home_page.dart';
import 'package:magh/features/products/presentation/product_lists.dart';
import 'package:magh/features/recipes/presentation/recipes.dart';
import 'package:magh/main.dart';


class AppRoutes {
  static GoRouter get routes {
    return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => HomePage(),
        ),
      ],
    );
  }
}
