import 'package:flutter/material.dart';
import 'package:flutter_magh/models/book.dart';
import 'package:flutter_magh/pages/detail_page.dart';
import 'package:flutter_magh/pages/home_page.dart';
import 'package:flutter_magh/routes/route_enums.dart';
import 'package:go_router/go_router.dart';



class AppRoutes{

  static GoRouter get routes {
    return GoRouter(
      initialLocation: '/',
        routes: [
          GoRoute(
              path: '/',
            builder: (context, state){
                return HomePage();
            },
            routes: [GoRoute(
              path: 'detail', // home page baatai detail page ma jaanu xa vane / dina pardaina
                name: AppRoute.bookDetail.name, //app routes ko enum banaayera tesko value taaneko
              builder: (context, state){
                return DetailPage(book: state.extra as Book);
              }

            )
            ],
          ),
        ]
    );
  }
}