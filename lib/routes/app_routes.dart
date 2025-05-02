import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:magh/features/meals/presentation/category_items.dart';
import 'package:magh/features/meals/presentation/meal_page.dart';
import 'package:magh/routes/route_enums.dart';

class AppRoutes {
  static GoRouter get routes {
    return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => MealPage(),

          //homepage bhitrai xa vane euta routes ma banaaune
          routes: [
              GoRoute(
                  path: '/category-items',
                  name: AppRoute.categoryItems.name,
                  builder: (context, state){
                  return CategoryItems(category: state.extra as String,); // jun ma click hunxa tesko data jaanxa
                }
              ),
          ]
        ),

      ],
    );
  }
}
